import java.io.*;
import java.util.*;

/**
 *
 * @author Ray Mooney
 * Methods for processing Linguistic Data Consortium (LDC,www.ldc.upenn.edu)
 * data files that are tagged for Part Of Speech (POS). Converts tagged files
 * into simple untagged Lists of sentences which are Lists of String tokens.
*/

public class ParserPOS_all_feat_but_prefix {

    /** The name of the LDC POS file */
    public File file = null;
    /** The I/O reader for accessing the file */
    protected BufferedReader reader = null;

    /** Initialize the suffix list */
    private static List <String>suffix = new ArrayList<String>();

    /** Create an object for a given LDC POS tagged file */
    public ParserPOS_all_feat_but_prefix(File file) {
      	this.file = file;
      	try {
      	    this.reader = new BufferedReader(new FileReader(file));
      	}
      	catch (IOException e) {
      	    System.out.println("\nCould not open POSTaggedFile: " + file);
      	    System.exit(1);
      	}
    }

    /** Populate Suffix List */
    public static void populateSuffix(String filename){
      try{
        int slash = filename.lastIndexOf("/");
        String directory = filename.substring(0,slash);
        filename = filename.substring(slash + 1, filename.length());
        Scanner s = new Scanner(new File(directory,filename));
        while (s.hasNext()){
            suffix.add(s.next());
        }
        s.close();
      }
      catch(Exception ex){
        System.out.println("Could not load suffix");
      }
    }


    /** Return the next line of POS tagged tokens from this file.
        Returns "\n" if end of sentence and start of a new one.
        Returns null if end of file */
    protected String getNextPOSLine() {
      	String line = null;
      	try {
      	    do {
            		// Read a line from the file
            		line = reader.readLine();
            		if (line == null) {
            		    // End of file, no more tokens, return null
            		    reader.close();
            		    return null;
            		}
            		// Sentence boundary indicator
            		if (line.startsWith("======="))
            		    line = "\n";
            		// If sentence number indicator for ATIS or comment for Brown, ignore it
            		if (line.startsWith("[ @") || line.startsWith("*x*"))
            		    line = "";
      	    } while (line.equals(""));
      	}
      	catch (IOException e) {
      	    System.out.println("\nCould not read from TextFileDocument: " + file);
      	    System.exit(1);
      	}
      	return line;
    }

    /** Take a line from the file and return a list of String tokens in the line */
    protected List<String> getTokens (String line) {
      	List<String> tokenList = new ArrayList<String>();
      	line = line.trim();
      	// Use a tokenizer to extract token/POS pairs in line,
      	// ignore brackets indicating chunk boundaries
      	StringTokenizer tokenizer = new StringTokenizer(line, " []");
      	while (tokenizer.hasMoreTokens()) {
      	    String tokenPos = tokenizer.nextToken();
      	    tokenList.add(tokenTagSeparate(tokenPos));
      	    // If last token in line has end of sentence tag ".",
      	    // add a sentence end token </S>
      	    if (tokenPos.endsWith("/.") && !tokenizer.hasMoreTokens()) {
      		      tokenList.add("</S>");
      		  }
      	}
      	return tokenList;
    }

    protected String tokenTagSeparate(String tokenTag){
      int slash = tokenTag.lastIndexOf("/");
      if(slash < 0)
        return tokenTag;
      else{
        String word = tokenTag.substring(0,slash);
        String tag_word = tokenTag.substring(slash + 1, tokenTag.length());
        /** Add the following if exist
        1. Suffix - prefix
        2. Capitalization - caps
        3. Hyphenation - hyp
        4. Starts with a number - num
        */
        String suff = "";
        String capital = "";
        String hyphen = "";
        String number = "";

        // Suffix
        for(int i = 0; i < suffix_length(); i++){
          if(word.endsWith(suffix.get(i))){
            suff = " " + suffix.get(i);
            break;
          }
        }

        // Capitalization
        if(Character.isUpperCase(word.charAt(0)))
          capital = " cap";

        // Number
        if(Character.isDigit(word.charAt(0)))
          number = " num";

        // Hyphen finder
        if(word.contains("-"))
          hyphen = " hyp";

        return word+suff+capital+hyphen+number+" "+tag_word;
      }

    }
    /** Return a List of sentences each represented as a List of String tokens for
        the sentences in this file */
    protected List<List<String>> tokenLists() {
      	List<List<String>> sentences = new ArrayList<List<String>>();
      	List<String> sentence = new ArrayList<String>();
      	String line;
      	while ((line=getNextPOSLine()) != null) {
      	    // Newline line indicates new sentence
      	    if (line.equals("\n")) {
            		if (!sentence.isEmpty()) {
            		    // Save completed sentence
            		    sentences.add(sentence);
            		    // and start a new sentence
            		    sentence = new ArrayList<String>();
            		}
      	    }
      	    else {
            		// Get the tokens in the line
            		List<String> tokens = getTokens(line);
            		if (!tokens.isEmpty()) {
            		    // If last token is an end-sentence token "</S>"
            		    if (tokens.get(tokens.size()-1).equals("</S>")) {
                  			// Then remove it
                  			tokens.remove(tokens.size()-1);
                  			// and add final sentence tokens
                  			sentence.addAll(tokens);
                  			// Save completed sentence
                  			sentences.add(sentence);
                  			// and start a new sentence
                  			sentence = new ArrayList<String>();
            		    }
            		    else {
                  			// Add the tokens in the line to the current sentence
                  			sentence.addAll(tokens);
            		    }
            		}
      	    }
      	}
      	// File should always end at end of a sentence
      	assert(sentence.isEmpty());
      	return sentences;
    }


    /** Take a list of LDC tagged input files or directories and convert them to a List of sentences
       each represented as a List of token Strings */
    public static List<List<String>> convertToTokenLists(File[] files) {
      	List<List<String>> sentences = new ArrayList<List<String>>();
      	for (int i = 0; i < files.length; i++) {
      	    File file = files[i];
      	    if (!file.isDirectory()) {
          		  if (!file.getName().contains("CHANGES.LOG"))
          		      sentences.addAll(new ParserPOS_all_feat_but_prefix(file).tokenLists());
      	    }
      	    else
      	    {
            		File[] dirFiles = file.listFiles();
            		sentences.addAll(convertToTokenLists(dirFiles));
      	    }

      	}
      	return sentences;
    }

    public static int suffix_length(){
      return suffix.size();
    }


    /** Convert LDC POS tagged files to just lists of tokens for each setences
     *  and print them out. */
    public static void main(String[] args) throws IOException {
      // Update the suffix list
      populateSuffix(args[0]);

      // Parse the files
      File[] files = new File[args.length - 1];
      for (int i = 0; i < files.length; i++)
          files[i] = new File(args[i + 1]);

      if(files[0].isDirectory()){
        //File dir = new File("wsj_mallet_extra_f");
        //dir.mkdir();
        int counter = 0;
        for(File file :files){
          if(!file.getName().contains("CHANGES.LOG")){
            System.out.println(counter);
            File[] dirFiles = file.listFiles();
            List<List<String>> sentences = convertToTokenLists(dirFiles);
            // Output the sentences in a file
            if(!sentences.isEmpty()){
              String writeFile = "wsj_section_" + counter+".pos";
              FileWriter writer = new FileWriter(new File("wsj_readable/wsj_all_feat_but_prefix",writeFile));

              for(List<String> sentence : sentences){
                for(String pair : sentence){
                  writer.write(pair);
                  writer.write(System.lineSeparator());
                }
                writer.write(System.lineSeparator());
              }
              writer.close();
            }
            counter += 1;
          }
        }
      }
      else{
        List<List<String>> sentences = 	convertToTokenLists(files);
        // Output the sentences in a file
        //File dir = new File("atis_mallet_extra_f");
        //dir.mkdir();
        FileWriter writer = new FileWriter(new File("atis_readable/atis_all_feat_but_prefix","atis3.pos"));

        for(List<String> sentence : sentences){
          for(String pair : sentence){
            writer.write(pair);
            writer.write(System.lineSeparator());
          }
          writer.write(System.lineSeparator());
        }
        writer.close();
      }

    }

}
