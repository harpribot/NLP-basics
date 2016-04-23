universe = vanilla
environment = CLASSPATH=./mallet-2.0.8RC3/class:mallet-2.0.8RC3/lib/mallet-deps.jar

Initialdir = .
Executable = /usr/bin/java

+Group   = "GRAD"
+Project = "INSTRUCTIONAL"
+ProjectDescription = "CS388 Homework 2"

###################
Log = traces/atis_added_features/crf_all_but_suffix/exp1.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_suffix/exp1_model --training-proportion 0.8 --random-seed 1001 --threads 10 --test lab atis_readable/atis_all_feat_but_suffix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_suffix/out/exp1.out
Error  = experiments/atis_added_features/crf_all_but_suffix/err/exp1.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_suffix/exp2.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_suffix/exp2_model --training-proportion 0.8 --random-seed 2001 --threads 10 --test lab atis_readable/atis_all_feat_but_suffix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_suffix/out/exp2.out
Error  = experiments/atis_added_features/crf_all_but_suffix/err/exp2.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_suffix/exp3.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_suffix/exp3_model --training-proportion 0.8 --random-seed 3001 --threads 10 --test lab atis_readable/atis_all_feat_but_suffix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_suffix/out/exp3.out
Error  = experiments/atis_added_features/crf_all_but_suffix/err/exp3.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_suffix/exp4.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_suffix/exp4_model --training-proportion 0.8 --random-seed 4001 --threads 10 --test lab atis_readable/atis_all_feat_but_suffix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_suffix/out/exp4.out
Error  = experiments/atis_added_features/crf_all_but_suffix/err/exp4.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_suffix/exp5.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_suffix/exp5_model --training-proportion 0.8 --random-seed 5001 --threads 10 --test lab atis_readable/atis_all_feat_but_suffix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_suffix/out/exp5.out
Error  = experiments/atis_added_features/crf_all_but_suffix/err/exp5.err
Queue 1
######################
Log = traces/atis_added_features/crf_all_but_suffix/exp6.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_suffix/exp6_model --training-proportion 0.8 --random-seed 6001 --threads 10 --test lab atis_readable/atis_all_feat_but_suffix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_suffix/out/exp6.out
Error  = experiments/atis_added_features/crf_all_but_suffix/err/exp6.err
Queue 1
######################
Log = traces/atis_added_features/crf_all_but_suffix/exp7.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_suffix/exp7_model --training-proportion 0.8 --random-seed 7001 --threads 10 --test lab atis_readable/atis_all_feat_but_suffix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_suffix/out/exp7.out
Error  = experiments/atis_added_features/crf_all_but_suffix/err/exp7.err
Queue 1
#######################
Log = traces/atis_added_features/crf_all_but_suffix/exp8.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_suffix/exp8_model --training-proportion 0.8 --random-seed 8001 --threads 10 --test lab atis_readable/atis_all_feat_but_suffix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_suffix/out/exp8.out
Error  = experiments/atis_added_features/crf_all_but_suffix/err/exp8.err
Queue 1
########################
Log = traces/atis_added_features/crf_all_but_suffix/exp9.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_suffix/exp9_model --training-proportion 0.8 --random-seed 9001 --threads 10 --test lab atis_readable/atis_all_feat_but_suffix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_suffix/out/exp9.out
Error  = experiments/atis_added_features/crf_all_but_suffix/err/exp9.err
Queue 1
##########################
Log = traces/atis_added_features/crf_all_but_suffix/exp10.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_suffix/exp10_model --training-proportion 0.8 --random-seed 1 --threads 10 --test lab atis_readable/atis_all_feat_but_suffix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_suffix/out/exp10.out
Error  = experiments/atis_added_features/crf_all_but_suffix/err/exp10.err
Queue 1
#############################
