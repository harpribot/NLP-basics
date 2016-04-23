package nlp.lm;

import java.io.*;
import java.util.*;

/**
 * @author Harshal Priyadarshi
 * A simple bigram language model that uses simple fixed-weight interpolation
 * with a unigram model for smoothing.
*/

public class BigramModel extends Ngrams{

    /** Compute unigram and bigram probabilities from unigram and bigram counts */
    public void calculateProbs() {
      	// Set bigram values to conditional probability of second token given first
      	for (Map.Entry<String, DoubleValue> entry : bigramMap.entrySet()) {
      	    // An entry in the HashMap maps a token to a DoubleValue
      	    String bigram = entry.getKey();
      	    // The value for the token is in the value of the DoubleValue
      	    DoubleValue value = entry.getValue();
      	    double bigramCount = value.getValue();
      	    String token1 = bigramToken1(bigram); // Get first token of bigram
      	    // Prob is ratio of bigram count to token1 unigram count
      	    double condProb = bigramCount / unigramMap.get(token1).getValue();
      	    // Set map value to conditional probability
      	    value.setValue(condProb);
	      }
      	// Store unigrams with zero count to remove from map
      	List<String> zeroTokens = new ArrayList<String>();
      	// Set unigram values to unigram probability
      	for (Map.Entry<String, DoubleValue> entry : unigramMap.entrySet()) {
      	    // An entry in the HashMap maps a token to a DoubleValue
      	    String token = entry.getKey();
      	    // Uniggram count is the current map value
      	    DoubleValue value = entry.getValue();
      	    double count = value.getValue();
      	    if (count == 0)
      		      // If count is zero (due to first encounter as <UNK>)
      		      // then remove save it to remove from map
      		      zeroTokens.add(token);
      	    else
      		      // Set map value to prob of unigram
      		      value.setValue(count / tokenCount);
	      }
	      // Remove zero count unigrams from map
	      for (String token : zeroTokens)
            unigramMap.remove(token);
    }


    /** Counts number of words in the provided corpus */
    public static int wordCount (List<List<String>> sentences) {
      	int wordCount = 0;
      	for (List<String> sentence : sentences) {
      	    wordCount += sentence.size();
      	}
      	return wordCount;
    }


    /** Print model as lists of unigram and bigram probabilities */
    public void print() {
      	System.out.println("Unigram probs:");
      	for (Map.Entry<String, DoubleValue> entry : unigramMap.entrySet()) {
      	    // An entry in the HashMap maps a token to a DoubleValue
      	    String token = entry.getKey();
      	    // The value for the token is in the value of the DoubleValue
      	    DoubleValue value = entry.getValue();
      	    System.out.println(token + " : " + value.getValue());
      	}
      	System.out.println("\nBigram probs:");
      	for (Map.Entry<String, DoubleValue> entry : bigramMap.entrySet()) {
      	    // An entry in the HashMap maps a token to a DoubleValue
      	    String bigram = entry.getKey();
      	    // The value for the token is in the value of the DoubleValue
      	    DoubleValue value = entry.getValue();
      	    System.out.println(bigramToken2(bigram) + " given " + bigramToken1(bigram) +
      			       " : " + value.getValue());
      	}
    }


    /** Train and test a bigram model.
     *  Command format: "nlp.lm.BigramModel [DIR]* [TestFrac]" where DIR
     *  is the name of a file or directory whose LDC POS Tagged files should be
     *  used for input data; and TestFrac is the fraction of the sentences
     *  in this data that should be used for testing, the rest for training.
     *  0 < TestFrac < 1
     *  Uses the last fraction of the data for testing and the first part
     *  for training.
     */
    public static void main(String[] args) throws IOException {
      	// All but last arg is a file/directory of LDC tagged input data
      	File[] files = new File[args.length - 1];
      	for (int i = 0; i < files.length; i++)
      	    files[i] = new File(args[i]);

      	// Last arg is the TestFrac
      	double testFraction = Double.valueOf(args[args.length -1]);

      	// Get list of sentences from the LDC POS tagged input files
      	List<List<String>> sentences = 	POSTaggedFile.convertToTokenLists(files);
      	int numSentences = sentences.size();

        // Compute number of test sentences based on TestFrac
      	int numTest = (int)Math.round(numSentences * testFraction);

        // Take test sentences from end of data
      	List<List<String>> testSentences = sentences.subList(numSentences - numTest, numSentences);

        // Take training sentences from start of data
      	List<List<String>> trainSentences = sentences.subList(0, numSentences - numTest);
      	System.out.println("# Train Sentences = " + trainSentences.size() +
      			   " (# words = " + wordCount(trainSentences) +
      			   ") \n# Test Sentences = " + testSentences.size() +
      			   " (# words = " + wordCount(testSentences) + ")");

        // Create a bigram model and train it.
      	BigramModel model = new BigramModel();

        System.out.println("Training...");
      	model.train(trainSentences);

        // Test on training data using test and test2
      	model.test(trainSentences);
        model.test2(trainSentences);

        System.out.println("Testing...");
      	// Test on test data using test and test2
      	model.test(testSentences);
      	model.test2(testSentences);
    }

}
