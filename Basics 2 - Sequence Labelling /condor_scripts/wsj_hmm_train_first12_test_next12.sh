universe = vanilla
environment = CLASSPATH=./mallet-2.0.8RC3/class:mallet-2.0.8RC3/lib/mallet-deps.jar

Initialdir = .
Executable = /usr/bin/java

+Group   = "GRAD"
+Project = "INSTRUCTIONAL"
+ProjectDescription = "CS388 Homework 2"

###################
Log = traces/wsj_original/HMM/train_first12_test_next12/exp.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/train_first12_test_next12/model --training-proportion 0.8 --random-seed 1001 --test lab wsj_readable/wsj_set_of_12/wsj_sec_0_to_11.pos wsj_readable/wsj_set_of_12/wsj_sec_12_to_23.pos


Output = experiments/wsj_original/HMM/train_first12_test_next12/exp.out
Error  = experiments/wsj_original/HMM/train_first12_test_next12/exp.err

Queue 1
