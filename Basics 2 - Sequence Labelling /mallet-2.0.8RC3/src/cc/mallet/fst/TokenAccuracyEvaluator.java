/* Copyright (C) 2002 Univ. of Massachusetts Amherst, Computer Science Dept.
   This file is part of "MALLET" (MAchine Learning for LanguagE Toolkit).
   http://www.cs.umass.edu/~mccallum/mallet
   This software is provided under the terms of the Common Public License,
   version 1.0, as published by http://www.opensource.org.  For further
   information, see the file `LICENSE' included with this distribution. */




/**
   @author Andrew McCallum <a href="mailto:mccallum@cs.umass.edu">mccallum@cs.umass.edu</a>
 */

package cc.mallet.fst;


import java.util.HashMap;
import java.util.logging.Logger;

import cc.mallet.types.Instance;
import cc.mallet.types.InstanceList;
import cc.mallet.types.Sequence;

import cc.mallet.util.MalletLogger;

/**
 * Evaluates a transducer model based on predictions of individual tokens.
 */
public class TokenAccuracyEvaluator extends TransducerEvaluator
{
	private static Logger logger = MalletLogger.getLogger(TokenAccuracyEvaluator.class.getName());

	private HashMap<String,Double> accuracy = new HashMap<String,Double>();

	private HashMap<String,Boolean> vocabulary = new HashMap<String,Boolean>(); // Changed

	public TokenAccuracyEvaluator (InstanceList[] instanceLists, String[] descriptions) {
		super (instanceLists, descriptions);
	}

	public TokenAccuracyEvaluator (InstanceList instanceList1, String description1) {
		this (new InstanceList[] {instanceList1}, new String[] {description1});
	}

	public TokenAccuracyEvaluator (InstanceList instanceList1, String description1,
			InstanceList instanceList2, String description2) {
		this (new InstanceList[] {instanceList1, instanceList2}, new String[] {description1, description2});
	}

	public TokenAccuracyEvaluator (InstanceList instanceList1, String description1,
			InstanceList instanceList2, String description2,
			InstanceList instanceList3, String description3) {
		this (new InstanceList[] {instanceList1, instanceList2, instanceList3}, new String[] {description1, description2, description3});
	}

	public void evaluateInstanceList (TransducerTrainer trainer, InstanceList instances, String description)
  {
		int numCorrectTokens;
		int totalTokens;
		int totalOOVTokens;
		int numCorrectOOVTokens;

		Transducer transducer = trainer.getTransducer();
		totalTokens = totalOOVTokens = numCorrectTokens = numCorrectOOVTokens = 0;
		// If training, then generate vocabulary
		if(vocabulary.isEmpty()){
			for(int i = 0; i < instances.size(); i++){
				Instance instance = instances.get(i);
				Sequence input = (Sequence)instance.getData();

				// Store them in the vocabulary
				for(int j = 0; j < input.size(); j++){
					if(!vocabulary.containsKey(input.get(j)))
						vocabulary.put(input.get(j).toString(),true);
				}
			}
		}

		for (int i = 0; i < instances.size(); i++) {
			Instance instance = instances.get(i);
			Sequence input = (Sequence) instance.getData();
			Sequence trueOutput = (Sequence) instance.getTarget();
			assert (input.size() == trueOutput.size());
			Sequence predOutput = transducer.transduce (input);
			assert (predOutput.size() == trueOutput.size());

			for (int j = 0; j < trueOutput.size(); j++) {
				totalTokens++;
				// Account for OOV
				if(!vocabulary.containsKey(input.get(j).toString())){
					totalOOVTokens++;
					// Get all correct OOV tokens
					if (trueOutput.get(j).equals(predOutput.get(j)))
						numCorrectOOVTokens++;
				}
				if (trueOutput.get(j).equals(predOutput.get(j)))
					numCorrectTokens++;

			}

		}
		double acc = ((double)numCorrectTokens)/totalTokens;
		double accOOV = ((double)numCorrectOOVTokens)/totalOOVTokens;
		accuracy.put(description, acc);
		logger.info (description +" accuracy="+acc +" OOV-Accuracy=" + accOOV);
	}

	/**
	 * Returns the accuracy from the last time test() or evaluate() was called
	 * @return
	 */
	public double getAccuracy (String description)
	{
		Double ret = accuracy.get(description);
		if (ret != null)
			return ret.doubleValue();
		throw new IllegalArgumentException ("No accuracy available for instance list \""+description+"\"");
	}
}
