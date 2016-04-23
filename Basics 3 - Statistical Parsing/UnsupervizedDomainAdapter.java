import edu.stanford.nlp.parser.lexparser.LexicalizedParser;
import edu.stanford.nlp.parser.lexparser.EvaluateTreebank;
import edu.stanford.nlp.parser.lexparser.Options;
import edu.stanford.nlp.trees.*;
import java.io.StringReader;
import java.util.Collection;
import java.util.List;
import java.io.File;
import edu.stanford.nlp.ling.CoreLabel;
import edu.stanford.nlp.ling.HasTag;
import edu.stanford.nlp.ling.HasWord;
import edu.stanford.nlp.ling.Label;
import edu.stanford.nlp.ling.Sentence;
import edu.stanford.nlp.ling.TaggedWord;
import java.util.ArrayList;
import java.util.function.Function;
import java.util.Arrays;

class UnsupervizedDomainAdapter{
  private Treebank seed_bank = null;
  private Treebank self_training_bank = null;
  private Treebank testing_bank = null;
  private final Options op;
  private LexicalizedParser parser = null;
  protected final Function<List<? extends HasWord>, List<TaggedWord>> tagger = null;

  public UnsupervizedDomainAdapter(Options op,
                                   String labelled_corpus,
                                   String unlabelled_corpus,
                                   int seed_sentences,
                                   int self_training_sentences,
                                   float seed_fraction,
                                   float self_training_fraction,
                                   float test_fraction,
                                   String seed_range,
                                   String self_training_range,
                                   String test_range){
    this.op = op;
    this.load_treebanks(labelled_corpus,
                        unlabelled_corpus,
                        seed_sentences,
                        self_training_sentences,
                        seed_fraction,
                        self_training_fraction,
                        test_fraction,
                        seed_range,
                        self_training_range,
                        test_range);
    }

  private void load_treebanks(String labelled_corpus,
                              String unlabelled_corpus,
                              int seed_sentences,
                              int self_training_sentences,
                              float seed_fraction,
                              float self_training_fraction,
                              float test_fraction,
                              String seed_range,
                              String self_training_range,
                              String test_range){
    Preprocessor processor = new Preprocessor(labelled_corpus,
                        unlabelled_corpus,
                        seed_sentences,
                        self_training_sentences,
                        seed_fraction,
                        self_training_fraction,
                        test_fraction,
                        seed_range,
                        self_training_range,
                        test_range);

    // SEED DATA
    this.seed_bank = processor.get_seed_bank();
    // SELF TRAINING DATA
    this.self_training_bank = processor.get_self_training_bank();
    // TESTING DATA
    this.testing_bank = processor.get_testing_bank();
  }

  public void train_on_seed(){
    this.parser = LexicalizedParser.trainFromTreebank(this.seed_bank, this.op);
  }

  public void retrain_on_seed_and_self_train(){
    this.parser = LexicalizedParser.trainFromTreebank(this.seed_bank, this.op);
  }

  public void evaluate_parser_on_test(){
    EvaluateTreebank evaluator = new EvaluateTreebank(this.parser);
    evaluator.testOnTreebank(this.testing_bank);
  }

  public void parse_self_training_and_append_to_seed(){
    System.out.println("Parsing Self Training Sentences....");
    for (Tree tree : this.self_training_bank){
      List<CoreLabel> sentence = this.getInputSentence(tree);
      this.seed_bank.add(this.parser.parse(sentence));
    }
  }

  private List<CoreLabel> getInputSentence(Tree t) {
    if (op.testOptions.forceTags) {
      if (op.testOptions.preTag) {
        List<TaggedWord> s = tagger.apply(t.yieldWords());
        if(op.testOptions.verbose) {
          System.err.println("Guess tags: "+Arrays.toString(s.toArray()));
          System.err.println("Gold tags: "+t.labeledYield().toString());
        }
        return Sentence.toCoreLabelList(s);
      } else if(op.testOptions.noFunctionalForcing) {
        ArrayList<? extends HasWord> s = t.taggedYield();
        for (HasWord word : s) {
          String tag = ((HasTag) word).tag();
          tag = tag.split("-")[0];
          ((HasTag) word).setTag(tag);
        }
        return Sentence.toCoreLabelList(s);
      } else {
        return Sentence.toCoreLabelList(t.taggedYield());
      }
    } else {
      return Sentence.toCoreLabelList(t.yieldWords());
    }
  }

  public static void main(String[] args) {
    /*
      Load all the data from the Labelled and unlabelled corpus
      Labelled Corpus : WSJ
      Unlabelled Corpus : BRWON
    */
    // Command Line Arguments
    String labelled_corpus = null;
    String unlabelled_corpus = null;
    int seed_sentences = 1000;
    int self_training_sentences = 0;
    float seed_fraction = 0;
    float self_training_fraction = 0;
    float test_fraction = 0;
    String seed_range = null;
    String self_training_range = null;
    String test_range = null;
    Boolean self_train = false;

    // Load the optional arguments
    int argIndex = 0;
    while (argIndex < args.length && args[argIndex].charAt(0) == '-'){
      if(args[argIndex].equalsIgnoreCase("-labelled_corpus")){
        labelled_corpus = args[argIndex + 1];
        argIndex += 2;
      }
      else if(args[argIndex].equalsIgnoreCase("-unlabelled_corpus")){
        unlabelled_corpus = args[argIndex + 1];
        argIndex += 2;
      }
      else if(args[argIndex].equalsIgnoreCase("-seed_sentences")){
        seed_sentences = Integer.parseInt(args[argIndex + 1]);
        argIndex += 2;
      }
      else if(args[argIndex].equalsIgnoreCase("-self_training_sentences")){
        self_training_sentences = Integer.parseInt(args[argIndex + 1]);
        argIndex += 2;
      }
      else if(args[argIndex].equalsIgnoreCase("-seed_fraction")){
        seed_fraction = Float.parseFloat(args[argIndex + 1]);
        argIndex += 2;
      }
      else if(args[argIndex].equalsIgnoreCase("-self_training_fraction")){
        self_training_fraction = Float.parseFloat(args[argIndex + 1]);
        argIndex += 2;
      }
      else if(args[argIndex].equalsIgnoreCase("-test_fraction")){
        test_fraction = Float.parseFloat(args[argIndex + 1]);
        argIndex += 2;
      }
      else if(args[argIndex].equalsIgnoreCase("-seed_range")){
        seed_range = args[argIndex + 1];
        argIndex += 2;
      }
      else if(args[argIndex].equalsIgnoreCase("-self_training_range")){
        self_training_range = args[argIndex + 1];
        argIndex += 2;
      }
      else if(args[argIndex].equalsIgnoreCase("-test_range")){
        test_range = args[argIndex + 1];
        argIndex += 2;
      }
      else if(args[argIndex].equalsIgnoreCase("-self_train")){
        self_train = Boolean.valueOf(args[argIndex + 1]);
        argIndex += 2;
      }
    }

    // Fill the option parameter
    Options op = new Options();
    op.doDep = false;
    op.doPCFG = true;
    op.setOptions("-goodPCFG", "-evals", "tsv");

    // Load the unsupervized parser class
    UnsupervizedDomainAdapter adapter = new UnsupervizedDomainAdapter(op,
                                labelled_corpus,
                                unlabelled_corpus,
                                seed_sentences,
                                self_training_sentences,
                                seed_fraction,
                                self_training_fraction,
                                test_fraction,
                                seed_range,
                                self_training_range,
                                test_range);

    //////////////////// TRAIN THE PARSER ON SEED DATA //////////////////////
    adapter.train_on_seed();
    if(self_train == true){
      //////////////////// TEST THE PARSER ON THE SELF TRAINING DATA ////////////
      adapter.parse_self_training_and_append_to_seed();
      //////////////////// RETRAIN THE PARSER ON THE NEW SEED SET ///////////
      adapter.retrain_on_seed_and_self_train();
    }
    /////////////////// EVALUATE THE PARSER ON THE TESTING BANK ///////////
    adapter.evaluate_parser_on_test();
  }
}
