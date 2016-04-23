universe = vanilla
environment = CLASSPATH=.:stanford-parser-full-2015-12-09/stanford-parser.jar:stanford-parser-full-2015-12-09/slf4j-api.jar

Initialdir = .
Executable = /usr/bin/java

+Group   = "GRAD"
+Project = "INSTRUCTIONAL"
+ProjectDescription = "CS388 Homework 3"

###################
Log = traces/experiment_8/exp_1000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus wsj -seed_fraction 0.9 -seed_sentences 10000  -self_training_range 02-22 -self_training_sentences 1000 -test_range 23 -self_train true

Output = output/experiment_8/exp_1000.out
Error  = error/experiment_8/exp_1000.err

Queue 1
#############################################################
Log = traces/experiment_8/exp_2000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus wsj -seed_fraction 0.9 -seed_sentences 10000  -self_training_range 02-22 -self_training_sentences 2000 -test_range 23 -self_train true

Output = output/experiment_8/exp_2000.out
Error  = error/experiment_8/exp_2000.err

Queue 1
#############################################################
Log = traces/experiment_8/exp_3000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus wsj -seed_fraction 0.9 -seed_sentences 10000  -self_training_range 02-22 -self_training_sentences 3000 -test_range 23 -self_train true

Output = output/experiment_8/exp_3000.out
Error  = error/experiment_8/exp_3000.err

Queue 1
#############################################################
Log = traces/experiment_8/exp_4000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus wsj -seed_fraction 0.9 -seed_sentences 10000  -self_training_range 02-22 -self_training_sentences 4000 -test_range 23 -self_train true

Output = output/experiment_8/exp_4000.out
Error  = error/experiment_8/exp_4000.err

Queue 1
#############################################################
Log = traces/experiment_8/exp_5000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus wsj -seed_fraction 0.9 -seed_sentences 10000  -self_training_range 02-22 -self_training_sentences 5000 -test_range 23 -self_train true

Output = output/experiment_8/exp_5000.out
Error  = error/experiment_8/exp_5000.err

Queue 1
#############################################################
Log = traces/experiment_8/exp_7000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus wsj -seed_fraction 0.9 -seed_sentences 10000  -self_training_range 02-22 -self_training_sentences 7000 -test_range 23 -self_train true

Output = output/experiment_8/exp_7000.out
Error  = error/experiment_8/exp_7000.err

Queue 1
#############################################################
Log = traces/experiment_8/exp_10000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus wsj -seed_fraction 0.9 -seed_sentences 10000  -self_training_range 02-22 -self_training_sentences 10000 -test_range 23 -self_train true

Output = output/experiment_8/exp_10000.out
Error  = error/experiment_8/exp_10000.err

Queue 1
#############################################################
Log = traces/experiment_8/exp_13000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus wsj -seed_fraction 0.9 -seed_sentences 10000  -self_training_range 02-22 -self_training_sentences 13000 -test_range 23 -self_train true

Output = output/experiment_8/exp_13000.out
Error  = error/experiment_8/exp_13000.err

Queue 1
#############################################################
Log = traces/experiment_8/exp_16000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus wsj -seed_fraction 0.9 -seed_sentences 10000  -self_training_range 02-22 -self_training_sentences 16000 -test_range 23 -self_train true

Output = output/experiment_8/exp_16000.out
Error  = error/experiment_8/exp_16000.err

Queue 1
#############################################################
Log = traces/experiment_8/exp_20000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus wsj -seed_fraction 0.9 -seed_sentences 10000  -self_training_range 02-22 -self_training_sentences 20000 -test_range 23 -self_train true

Output = output/experiment_8/exp_20000.out
Error  = error/experiment_8/exp_20000.err

Queue 1
#############################################################
Log = traces/experiment_8/exp_25000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus wsj -seed_fraction 0.9 -seed_sentences 10000  -self_training_range 02-22 -self_training_sentences 25000 -test_range 23 -self_train true

Output = output/experiment_8/exp_25000.out
Error  = error/experiment_8/exp_25000.err

Queue 1
#############################################################
Log = traces/experiment_8/exp_30000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus wsj -seed_fraction 0.9 -seed_sentences 10000  -self_training_range 02-22 -self_training_sentences 30000 -test_range 23 -self_train true

Output = output/experiment_8/exp_30000.out
Error  = error/experiment_8/exp_30000.err

Queue 1
#############################################################
Log = traces/experiment_8/exp_35000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus wsj -seed_fraction 0.9 -seed_sentences 10000  -self_training_range 02-22 -self_training_sentences 35000 -test_range 23 -self_train true

Output = output/experiment_8/exp_35000.out
Error  = error/experiment_8/exp_35000.err

Queue 1
