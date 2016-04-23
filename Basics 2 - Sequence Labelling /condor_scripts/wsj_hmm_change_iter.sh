universe = vanilla
environment = CLASSPATH=./mallet-2.0.8RC3/class:mallet-2.0.8RC3/lib/mallet-deps.jar

Initialdir = .
Executable = /usr/bin/java

+Group   = "GRAD"
+Project = "INSTRUCTIONAL"
+ProjectDescription = "CS388 Homework 2"
###################
Log = traces/wsj_original/HMM/iter_changes/iter_5.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_5 --iterations 5 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_5.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_5.err

Queue 1

###################
Log = traces/wsj_original/HMM/iter_changes/iter_10.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_10 --iterations 10 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_10.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_10.err

Queue 1

###################
Log = traces/wsj_original/HMM/iter_changes/iter_15.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_15 --iterations 15 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_15.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_15.err

Queue 1

###################
Log = traces/wsj_original/HMM/iter_changes/iter_20.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_20 --iterations 20 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_20.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_20.err

Queue 1

###################
###################
Log = traces/wsj_original/HMM/iter_changes/iter_25.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_25 --iterations 25 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_25.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_25.err

Queue 1

###################
Log = traces/wsj_original/HMM/iter_changes/iter_30.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_30 --iterations 30 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_30.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_30.err

Queue 1

###################
Log = traces/wsj_original/HMM/iter_changes/iter_35.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_35 --iterations 35 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_35.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_35.err

Queue 1

###################
Log = traces/wsj_original/HMM/iter_changes/iter_40.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_40 --iterations 40 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_40.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_40.err

Queue 1

###################
Log = traces/wsj_original/HMM/iter_changes/iter_45.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_45 --iterations 45 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_45.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_45.err

Queue 1

###################
Log = traces/wsj_original/HMM/iter_changes/iter_50.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_50 --iterations 50 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_50.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_50.err

Queue 1

###################
Log = traces/wsj_original/HMM/iter_changes/iter_55.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_55 --iterations 55 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_55.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_55.err

Queue 1

###################
Log = traces/wsj_original/HMM/iter_changes/iter_60.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_60 --iterations 60 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_60.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_60.err

Queue 1

###################
Log = traces/wsj_original/HMM/iter_changes/iter_65.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_65 --iterations 65 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_65.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_65.err

Queue 1

###################
Log = traces/wsj_original/HMM/iter_changes/iter_70.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_70 --iterations 70 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_70.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_70.err

Queue 1

###################
Log = traces/wsj_original/HMM/iter_changes/iter_75.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_75 --iterations 75 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_75.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_75.err

Queue 1

###################
Log = traces/wsj_original/HMM/iter_changes/iter_80.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_80 --iterations 80 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_80.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_80.err

Queue 1

###################
Log = traces/wsj_original/HMM/iter_changes/iter_85.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/wsj_original/HMM/iter_changes/model_iter_85 --iterations 85 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/HMM/iter_changes/out/iter_85.out
Error  = experiments/wsj_original/HMM/iter_changes/err/iter_85.err

Queue 1
