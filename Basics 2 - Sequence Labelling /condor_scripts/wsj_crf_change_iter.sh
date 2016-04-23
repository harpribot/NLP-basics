universe = vanilla
environment = CLASSPATH=./mallet-2.0.8RC3/class:mallet-2.0.8RC3/lib/mallet-deps.jar

Initialdir = .
Executable = /usr/bin/java

+Group   = "GRAD"
+Project = "INSTRUCTIONAL"
+ProjectDescription = "CS388 Homework 2"
###################
Log = traces/wsj_original/CRF/iter_changes/iter_10.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_10  --iterations 10 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_10.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_10.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_20.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_20  --iterations 20 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_20.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_20.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_30.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_30  --iterations 30 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_30.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_30.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_40.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_40  --iterations 40 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_40.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_40.err

Queue 1

###################
###################
Log = traces/wsj_original/CRF/iter_changes/iter_50.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_50  --iterations 50 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_50.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_50.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_60.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_60  --iterations 60 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_60.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_60.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_70.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_70  --iterations 70 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_70.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_70.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_80.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_80  --iterations 80 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_80.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_80.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_90.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_90  --iterations 90 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_90.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_90.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_100.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_100  --iterations 100 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_100.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_100.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_110.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_110  --iterations 110 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_110.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_110.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_120.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_120  --iterations 120 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_120.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_120.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_130.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_130  --iterations 130 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_130.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_130.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_140.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_140  --iterations 140 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_140.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_140.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_150.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_150  --iterations 150 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_150.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_150.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_160.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_160  --iterations 160 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_160.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_160.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_170.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_170  --iterations 170 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_170.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_170.err

Queue 1

###################
Log = traces/wsj_original/CRF/iter_changes/iter_180.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/wsj_original/CRF/iter_changes/model_180  --iterations 180 --test lab wsj_readable/wsj_original/wsj_section_0.pos wsj_readable/wsj_original/wsj_section_1.pos


Output = experiments/wsj_original/CRF/iter_changes/out/iter_180.out
Error  = experiments/wsj_original/CRF/iter_changes/err/iter_180.err

Queue 1
