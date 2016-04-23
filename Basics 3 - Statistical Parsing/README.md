# Statistical Parsing using Unsupervised Domain Adaptation

## Base Libraries Used
Stanford CoreNLP parser
Download from here: http://nlp.stanford.edu/software/stanford-parser-full-2015-12-09.zip

## My Libraries
1. Preprocessor.java -> Preprocesses data into Seed, Self-Training, and Test Data
2. UnsupervisedDomainAdapter.java -> My code for implementing Unsupervised Domain Adaptation


## Run Instructions (Required Condor)
sh condor.sh

## Experiments Decoding
experiment_1  --> Seed:WSJ, Test:Brown,  Self-Training - True (Out-of-domain), Varying Seed
experiment_2  --> Seed:WSJ, Test:Brown,  Self-Training - False (Out-of-domain), Varying Seed
experiment_3  --> Seed:WSJ, Test:WSJ,  Self-Training - False (In-domain), Varying Seed
experiment_4  --> Seed:WSJ, Test:Brown,  Self-Training - True (Out-of-domain), Varying Self Training
experiment_5  --> Seed:Brown, Test:WSJ,  Self-Training - True (Out-of-domain), Varying Seed
experiment_6  --> Seed:Brown, Test:WSJ,  Self-Training - False (Out-of-domain), Varying Seed
experiment_7  --> Seed:Brown, Test:Brown,  Self-Training - False (In-domain), Varying Seed
experiment_8  --> Seed:Brown, Test:WSJ,  Self-Training - True (Out-of-domain), Varying Self Training

## Docs of Importance :
1. output --> Directory that stores the parse trees of test data
2. error --> Directory that stores the runtime output and the F1 scores of experiments
3. traces --> Directory that stores the condor run related information
4. report/Report.pdf --> 4 page report
5. brown/ --> parsed Brown data <-- for supervised learning using PCFG Parser
6. wsj/ --> parsed WSJ data <-- for supervised learning using PCFG Parser


# Optional Commands Information to the UnsupervisedDomainAdapter code (see usage in condor scripts)
1. labelled_corpus   <-- location of the seed corpus
2. unlabelled_corpus <-- location of the test corpus
3. seed_sentences    <-- Number of seed sentences
4. self_training_sentence <-- Number of self training sentences
5. seed_fraction  <-- When Brown is Seed it tells that what fraction of Brown is seed
6. self_training_fraction  <-- When Brown is Self Training it tells that what fraction of Brown is self training
7. test_fraction <-- When Brown is Test Data it tells that what fraction is test
8. seed_range <-- When WSJ is Seed, then it tells that which docs are part of seed
9. self_training_range <-- When WSJ is Self Training, then it tells what docs are in self training
10. test_range <-- When WSJ is test, it tells what docs are in test
11. self_train <-- True if we want to self train, else False
