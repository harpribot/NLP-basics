universe = vanilla
environment = CLASSPATH=.:stanford-parser-full-2015-12-09/stanford-parser.jar:stanford-parser-full-2015-12-09/slf4j-api.jar

Initialdir = .
Executable = /usr/bin/java

+Group   = "GRAD"
+Project = "INSTRUCTIONAL"
+ProjectDescription = "CS388 Homework 3"

###################
Log = traces/experiment_7/exp_1000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus brown -seed_fraction 0.9 -seed_sentences 1000 -test_fraction 0.1 -self_train false
Output = output/experiment_7/exp_1000.out
Error  = error/experiment_7/exp_1000.err

Queue 1
#############################################################
Log = traces/experiment_7/exp_2000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus brown -seed_fraction 0.9 -seed_sentences 2000 -test_fraction 0.1 -self_train false
Output = output/experiment_7/exp_2000.out
Error  = error/experiment_7/exp_2000.err

Queue 1
#############################################################
Log = traces/experiment_7/exp_3000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus brown -seed_fraction 0.9 -seed_sentences 3000 -test_fraction 0.1 -self_train false
Output = output/experiment_7/exp_3000.out
Error  = error/experiment_7/exp_3000.err

Queue 1
#############################################################
Log = traces/experiment_7/exp_4000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus brown -seed_fraction 0.9 -seed_sentences 4000 -test_fraction 0.1 -self_train false
Output = output/experiment_7/exp_4000.out
Error  = error/experiment_7/exp_4000.err

Queue 1
#############################################################
Log = traces/experiment_7/exp_5000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus brown -seed_fraction 0.9 -seed_sentences 5000 -test_fraction 0.1 -self_train false
Output = output/experiment_7/exp_5000.out
Error  = error/experiment_7/exp_5000.err

Queue 1
#############################################################
Log = traces/experiment_7/exp_7000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus brown -seed_fraction 0.9 -seed_sentences 7000 -test_fraction 0.1 -self_train false
Output = output/experiment_7/exp_7000.out
Error  = error/experiment_7/exp_7000.err

Queue 1
#############################################################
Log = traces/experiment_7/exp_10000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus brown -seed_fraction 0.9 -seed_sentences 10000 -test_fraction 0.1 -self_train false
Output = output/experiment_7/exp_10000.out
Error  = error/experiment_7/exp_10000.err

Queue 1
#############################################################
Log = traces/experiment_7/exp_13000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus brown -seed_fraction 0.9 -seed_sentences 13000 -test_fraction 0.1 -self_train false
Output = output/experiment_7/exp_13000.out
Error  = error/experiment_7/exp_13000.err

Queue 1
#############################################################
Log = traces/experiment_7/exp_17000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus brown -seed_fraction 0.9 -seed_sentences 17000 -test_fraction 0.1 -self_train false
Output = output/experiment_7/exp_17000.out
Error  = error/experiment_7/exp_17000.err

Queue 1
#############################################################
Log = traces/experiment_7/exp_21000.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervizedDomainAdapter -labelled_corpus brown -unlabelled_corpus brown -seed_fraction 0.9 -seed_sentences 21000 -test_fraction 0.1 -self_train false
Output = output/experiment_7/exp_21000.out
Error  = error/experiment_7/exp_21000.err

Queue 1
