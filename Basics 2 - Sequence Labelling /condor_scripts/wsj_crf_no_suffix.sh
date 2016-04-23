universe = vanilla
environment = CLASSPATH=./mallet-2.0.8RC3/class:mallet-2.0.8RC3/lib/mallet-deps.jar

Initialdir = .
Executable = /usr/bin/java

+Group   = "GRAD"
+Project = "INSTRUCTIONAL"
+ProjectDescription = "CS388 Homework 2"

###################
Log = traces/wsj_added_features/crf_all_but_suffix/exp.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_added_features/crf_all_but_suffix/model --training-proportion 0.8 --threads 10 --random-seed 1001 --test lab wsj_readable/wsj_all_feat_but_suffix/wsj_section_0.pos wsj_readable/wsj_all_feat_but_suffix/wsj_section_1.pos


Output = experiments/wsj_added_features/crf_all_but_suffix/exp.out
Error  = experiments/wsj_added_features/crf_all_but_suffix/exp.err

Queue 1
