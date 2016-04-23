universe = vanilla
environment = CLASSPATH=./mallet-2.0.8RC3/class:mallet-2.0.8RC3/lib/mallet-deps.jar

Initialdir = .
Executable = /usr/bin/java

+Group   = "GRAD"
+Project = "INSTRUCTIONAL"
+ProjectDescription = "CS388 Homework 2"

###################
Log = traces/wsj_original/CRF/train_0_test_1/exp.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/train_0_test_1/model --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/train_0_test_1/exp.out
Error  = experiments/wsj_original/CRF/train_0_test_1/exp.err

Queue 1
