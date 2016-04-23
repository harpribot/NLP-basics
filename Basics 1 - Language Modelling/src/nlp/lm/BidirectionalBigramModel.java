package nlp.lm;

import java.io.*;
import java.util.*;

/**
 *
 * @author Harshal Priyadarshi
 * Combines both a forward and backward bigram model to build a bidirectional model.
 * Interpolates both models with equal weights.
*/

public class BidirectionalBigramModel extends Ngrams{

    /** Weights of forward and backward models */
    public double forwardWeight = 0.5;
    public double backwardWeight = 1 - forwardWeight;

    /** Forward bigram model */
    public BigramModel bigramModel;

    /** Backward bigram model */
    public BackwardBigramModel backwardBigramModel;

    /** Initialize bidirectional model by initializing both forward and backward
     * models */
    public BidirectionalBigramModel() {
        bigramModel = new BigramModel();
        backwardBigramModel = new BackwardBigramModel();
    }

    /** Train model by training both forward and backward models*/
    public void train (List<List<String>> sentences) {
        bigramModel.train(sentences);
        backwardBigramModel.train(sentences);
    }

    /** Test model for Word Perplexity */
    public void test2 (List<List<String>> sentences) {
        double totalLogProb = 0;
        double totalNumTokens = 0;
        for (List<String> sentence : sentences) {
            totalNumTokens += sentence.size();
            double sentenceLogProb = sentenceLogProb2(sentence);
            totalLogProb += sentenceLogProb;
        }
        double perplexity = Math.exp(-totalLogProb / totalNumTokens);
        System.out.println("Word Perplexity = " + perplexity );
    }

    /** Overrides the Ngrams log-probability for Word Perplexity*/
    public double sentenceLogProb2 (List<String> sentence) {
        double[] forwardProbs = bigramModel.sentenceTokenProbs(sentence);
        double[] backwardProbs = backwardBigramModel.sentenceTokenProbs(sentence);
        double sentenceLogProb = 0;
        assert (forwardProbs.length == backwardProbs.length) && (forwardProbs.length == sentence.size()+1);
        for (int i = 0; i < sentence.size(); i++) {
            double forwardProbToken = forwardProbs[i];
            double backwardProbToken = backwardProbs[backwardProbs.length - i - 2];
            double logProbToken = Math.log(forwardProbToken * forwardWeight + backwardProbToken * backwardWeight);
            sentenceLogProb += logProbToken;
        }
        return sentenceLogProb;
    }

    /** Train and test a bidirectional bigram model.
     *  Command format: "nlp.lm.BidirectionalBigramModel [DIR]* [TestFrac]" where DIR
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
        List<List<String>> sentences =  POSTaggedFile.convertToTokenLists(files);
        int numSentences = sentences.size();

        // Compute number of test sentences based on TestFrac
        int numTest = (int)Math.round(numSentences * testFraction);

        // Take test sentences from end of data
        List<List<String>> testSentences = sentences.subList(numSentences - numTest, numSentences);

        // Take training sentences from start of data
        List<List<String>> trainSentences = sentences.subList(0, numSentences - numTest);
        System.out.println("# Train Sentences = " + trainSentences.size() +
                           " (# words = " + BigramModel.wordCount(trainSentences) +
                           ") \n# Test Sentences = " + testSentences.size() +
                           " (# words = " + BigramModel.wordCount(testSentences) + ")");

        // Create a BidirectionalBigramModel model and train it.
        BidirectionalBigramModel model = new BidirectionalBigramModel();

        System.out.println("Training...");
        model.train(trainSentences);

        // Test on training data using test2
        model.test2(trainSentences);

        System.out.println("Testing...");
        // Test on test data using test2
        model.test2(testSentences);
    }

}
