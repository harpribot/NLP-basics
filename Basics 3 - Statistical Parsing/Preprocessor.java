import edu.stanford.nlp.parser.lexparser.LexicalizedParser;
import edu.stanford.nlp.trees.*;
import java.io.StringReader;
import java.util.Collection;
import java.util.List;
import java.io.File;
import edu.stanford.nlp.parser.lexparser.Options;


class Preprocessor{
  private String labelled_corpus;
  private String unlabelled_corpus;
  private int seed_sentences;
  private int self_training_sentences;
  private float seed_fraction;
  private float self_training_fraction;
  private float test_fraction;
  private String seed_range;
  private String self_training_range;
  private String test_range;
  private MemoryTreebank labelled_treebank;
  private MemoryTreebank seed_bank;
  private MemoryTreebank self_training_bank;
  private MemoryTreebank testing_bank;
  private MemoryTreebank division_bank_1;
  private MemoryTreebank division_bank_2;
  private MemoryTreebank range_bank_1;
  private MemoryTreebank range_bank_2;
  private Options op = new Options();

  public Preprocessor(String labelled_corpus,
      String unlabelled_corpus,
      int seed_sentences,
      int self_training_sentences,
      float seed_fraction,
      float self_training_fraction,
      float test_fraction,
      String seed_range,
      String self_training_range,
      String test_range){


    this.labelled_corpus = labelled_corpus;
    this.unlabelled_corpus = unlabelled_corpus;
    this.seed_sentences = seed_sentences;
    this.self_training_sentences = self_training_sentences;
    this.seed_fraction = seed_fraction;
    this.self_training_fraction = self_training_fraction;
    this.test_fraction = test_fraction;
    this.seed_range = seed_range;
    this.self_training_range = self_training_range;
    this.test_range = test_range;
    // initialize all the banks
    this.seed_bank = op.tlpParams.testMemoryTreebank();
    this.self_training_bank = op.tlpParams.testMemoryTreebank();
    this.testing_bank = op.tlpParams.testMemoryTreebank();
    this.division_bank_1 = op.tlpParams.testMemoryTreebank();
    this.division_bank_2 = op.tlpParams.testMemoryTreebank();
    this.range_bank_1 = op.tlpParams.testMemoryTreebank();
    this.range_bank_2 = op.tlpParams.testMemoryTreebank();
    // Divide the WSJ and BROWN TREEBANK
    this.divide_banks_using_range();

    this.divide_banks_using_fraction();

    this.load_labelled_treebank();
    // Form all the 3 types of banks
    this.form_seed_bank();
    this.form_self_training_bank();
    this.form_test_bank();
    // Update the options
    op.doDep = false;
    op.doPCFG = true;
    op.setOptions("-goodPCFG", "-evals", "tsv");

  }

  public void load_labelled_treebank(){
    if(this.labelled_corpus.equals("wsj")){
      this.labelled_treebank = this.range_bank_1;
    }
    else if(this.labelled_corpus.equals("brown")){
      this.labelled_treebank = this.division_bank_1;
    }
  }

  public void form_seed_bank(){
    if(this.labelled_corpus.equals("wsj")){
      this.seed_bank = this.labelled_treebank;
      while(this.seed_bank.size() > this.seed_sentences){
        int last_index = this.seed_bank.size() - 1;
        Tree tree = this.seed_bank.remove(last_index);
      }
    }
    else if(this.labelled_corpus.equals("brown")){
      this.seed_bank = this.labelled_treebank;
    }
  }

  public void form_self_training_bank(){
    if(this.labelled_corpus.equals("wsj")){
      this.self_training_bank = this.division_bank_1;
    }
    else if(this.labelled_corpus.equals("brown")){
      this.self_training_bank = this.range_bank_1;
      // Crop the self training bank to required size if wsj : automatically done for brown
      if(this.self_training_sentences != 0){
        while(this.self_training_bank.size() > this.self_training_sentences){
          int last_index = this.self_training_bank.size() - 1;
          Tree tree = this.self_training_bank.remove(last_index);
        }
      }
    }

  }

  public void form_test_bank(){
    if(this.labelled_corpus.equals("wsj")){
      if(this.test_range != null){
        this.testing_bank = this.range_bank_2;
      }
      else{
        this.testing_bank = this.division_bank_2;
      }
    }
    else if(this.labelled_corpus.equals("brown")){
      if(this.test_fraction != 0){
        this.testing_bank = this.division_bank_2;
      }
      else{
        this.testing_bank = this.range_bank_2;
      }
    }
  }

  public void divide_banks_using_range(){
    // Get the names of subdirectories of the wsj bank
    File [] directories = null;
    if(this.labelled_corpus.equals("wsj"))
      directories = new File(this.labelled_corpus).listFiles(File::isDirectory);
    else if(this.unlabelled_corpus.equals("wsj"))
      directories = new File(this.unlabelled_corpus).listFiles(File::isDirectory);
    else
      directories = new File("wsj").listFiles(File::isDirectory);

    // Get the range for range_bank_1
    for(int i = 2; i <= 23; i++){
      MemoryTreebank range_bank = op.tlpParams.testMemoryTreebank();
      range_bank.loadPath(directories[i].getPath());

      boolean success = true;
      if(i >= 2 && i <= 22){
        for(int j = 0; j < range_bank.size(); j++){
          Tree poppedTree = range_bank.remove(0);
          success = this.range_bank_1.add(poppedTree);

          if(!success)
            System.out.println("Transfer failed");
        }
      }
      else if(i == 23){
        for(int j = 0; j < range_bank.size(); j++){
          Tree poppedTree = range_bank.remove(0);
          success = this.range_bank_2.add(poppedTree);

          if(!success)
            System.out.println("Transfer failed");
        }
      }
    }
  }

  public void divide_banks_using_fraction(){
    // Get names of all the genre in the brown treebank
    File [] directories = null;
    if(this.labelled_corpus.equals("brown"))
      directories = new File(this.labelled_corpus).listFiles(File::isDirectory);
    else if(this.unlabelled_corpus.equals("brown"))
      directories = new File(this.unlabelled_corpus).listFiles(File::isDirectory);
    else
      directories = new File("brown").listFiles(File::isDirectory);

    // Create a treebank for each genre
    for(File directory : directories){
      MemoryTreebank genre_bank = op.tlpParams.testMemoryTreebank();
      genre_bank.loadPath(directory.getPath());
      // Now divide the data between self training and testing in ratio:1 proportion
      int genre_size = genre_bank.size();
      int size1 = 0;
      if(this.self_training_fraction != 0)
        size1 = (int)(self_training_fraction * genre_bank.size());
      else if(this.seed_fraction != 0)
        size1 = (int)(seed_fraction * genre_bank.size());
      else
        size1 = (int)(0.9 * genre_bank.size());

      int sentences_per_genre = -10;
      if(this.self_training_sentences != 0 && this.labelled_corpus.equals("wsj")){
        sentences_per_genre = this.self_training_sentences/directories.length;
      }
      else if(this.seed_sentences != 0 && this.labelled_corpus.equals("brown")){
        sentences_per_genre = this.seed_sentences/directories.length;
      }

      boolean success = true;
      for(int i = 0; i < genre_size; i++){
        if(i < size1){
          Tree poppedTree = genre_bank.remove(0);
          if(sentences_per_genre == -10)
            success = this.division_bank_1.add(poppedTree);
          else if(sentences_per_genre > 0){
            sentences_per_genre -= 1;
            success = this.division_bank_1.add(poppedTree);
          }
        }
        else{
          Tree poppedTree = genre_bank.remove(0);
          success =  this.division_bank_2.add(poppedTree);
        }

        // Check if the division was successful or not
        if(!success)
          System.out.println("Transfer failed");
      }
    }
  }

  public Treebank get_seed_bank(){
    return this.seed_bank;
  }

  public Treebank get_self_training_bank(){
    return this.self_training_bank;
  }

  public Treebank get_testing_bank(){
    return this.testing_bank;
  }

}
