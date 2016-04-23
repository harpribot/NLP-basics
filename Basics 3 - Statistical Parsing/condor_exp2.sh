universe = vanilla
environment = CLASSPATH=.:stanford-parser-full-2015-12-09/stanford-parser.jar:stanford-parser-full-2015-12-09/slf4j-api.jar

Initialdir = .
Executable = /usr/bin/java

+Group   = "GRAD"
+Project = "INSTRUCTIONAL"
+ProjectDescription = "CS388 Homework 3"

###################
Log = traces/experiment_2/exp_1000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus wsj -unlabelled_corpus brown -seed_sentences 1000 -self_training_fraction 0.9 -seed_range 02-22 -self_train false

Output = output/experiment_2/exp_1000.out
Error  = error/experiment_2/exp_1000.err

Queue 1
#############################################################
Log = traces/experiment_2/exp_2000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus wsj -unlabelled_corpus brown -seed_sentences 2000 -self_training_fraction 0.9 -seed_range 02-22 -self_train false
Output = output/experiment_2/exp_2000.out
Error  = error/experiment_2/exp_2000.err

Queue 1
#############################################################
Log = traces/experiment_2/exp_3000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus wsj -unlabelled_corpus brown -seed_sentences 3000 -self_training_fraction 0.9 -seed_range 02-22 -self_train false
Output = output/experiment_2/exp_3000.out
Error  = error/experiment_2/exp_3000.err

Queue 1
#############################################################
Log = traces/experiment_2/exp_4000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus wsj -unlabelled_corpus brown -seed_sentences 4000 -self_training_fraction 0.9 -seed_range 02-22 -self_train false
Output = output/experiment_2/exp_4000.out
Error  = error/experiment_2/exp_4000.err

Queue 1
#############################################################
Log = traces/experiment_2/exp_5000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus wsj -unlabelled_corpus brown -seed_sentences 5000 -self_training_fraction 0.9 -seed_range 02-22 -self_train false
Output = output/experiment_2/exp_5000.out
Error  = error/experiment_2/exp_5000.err

Queue 1
#############################################################
Log = traces/experiment_2/exp_7000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus wsj -unlabelled_corpus brown -seed_sentences 7000 -self_training_fraction 0.9 -seed_range 02-22 -self_train false
Output = output/experiment_2/exp_7000.out
Error  = error/experiment_2/exp_7000.err

Queue 1
#############################################################
Log = traces/experiment_2/exp_10000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus wsj -unlabelled_corpus brown -seed_sentences 10000 -self_training_fraction 0.9 -seed_range 02-22 -self_train false
Output = output/experiment_2/exp_10000.out
Error  = error/experiment_2/exp_10000.err

Queue 1
#############################################################
Log = traces/experiment_2/exp_13000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus wsj -unlabelled_corpus brown -seed_sentences 13000 -self_training_fraction 0.9 -seed_range 02-22 -self_train false
Output = output/experiment_2/exp_13000.out
Error  = error/experiment_2/exp_13000.err

Queue 1
#############################################################
Log = traces/experiment_2/exp_16000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus wsj -unlabelled_corpus brown -seed_sentences 16000 -self_training_fraction 0.9 -seed_range 02-22 -self_train false
Output = output/experiment_2/exp_16000.out
Error  = error/experiment_2/exp_16000.err

Queue 1
#############################################################
Log = traces/experiment_2/exp_20000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus wsj -unlabelled_corpus brown -seed_sentences 20000 -self_training_fraction 0.9 -seed_range 02-22 -self_train false
Output = output/experiment_2/exp_20000.out
Error  = error/experiment_2/exp_20000.err

Queue 1

##############################################################
Log = traces/experiment_2/exp_25000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus wsj -unlabelled_corpus brown -seed_sentences 25000 -self_training_fraction 0.9 -seed_range 02-22 -self_train false
Output = output/experiment_2/exp_25000.out
Error  = error/experiment_2/exp_25000.err

Queue 1

##############################################################
Log = traces/experiment_2/exp_30000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus wsj -unlabelled_corpus brown -seed_sentences 30000 -self_training_fraction 0.9 -seed_range 02-22 -self_train false
Output = output/experiment_2/exp_30000.out
Error  = error/experiment_2/exp_30000.err

Queue 1
###############################################################
Log = traces/experiment_2/exp_35000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus wsj -unlabelled_corpus brown -seed_sentences 35000 -self_training_fraction 0.9 -seed_range 02-22 -self_train false
Output = output/experiment_2/exp_35000.out
Error  = error/experiment_2/exp_35000.err

Queue 1
