universe = vanilla
environment = CLASSPATH=./mallet-2.0.8RC3/class:mallet-2.0.8RC3/lib/mallet-deps.jar

Initialdir = .
Executable = /usr/bin/java

+Group   = "GRAD"
+Project = "INSTRUCTIONAL"
+ProjectDescription = "CS388 Homework 2"

###################
Log = traces/atis_added_features/crf_all_but_prefix/exp1.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_prefix/exp1_model --training-proportion 0.8 --random-seed 1001 --threads 10 --test lab atis_readable/atis_all_feat_but_prefix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_prefix/out/exp1.out
Error  = experiments/atis_added_features/crf_all_but_prefix/err/exp1.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_prefix/exp2.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_prefix/exp2_model --training-proportion 0.8 --random-seed 2001 --threads 10 --test lab atis_readable/atis_all_feat_but_prefix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_prefix/out/exp2.out
Error  = experiments/atis_added_features/crf_all_but_prefix/err/exp2.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_prefix/exp3.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_prefix/exp3_model --training-proportion 0.8 --random-seed 3001 --threads 10 --test lab atis_readable/atis_all_feat_but_prefix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_prefix/out/exp3.out
Error  = experiments/atis_added_features/crf_all_but_prefix/err/exp3.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_prefix/exp4.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_prefix/exp4_model --training-proportion 0.8 --random-seed 4001 --threads 10 --test lab atis_readable/atis_all_feat_but_prefix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_prefix/out/exp4.out
Error  = experiments/atis_added_features/crf_all_but_prefix/err/exp4.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_prefix/exp5.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_prefix/exp5_model --training-proportion 0.8 --random-seed 5001 --threads 10 --test lab atis_readable/atis_all_feat_but_prefix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_prefix/out/exp5.out
Error  = experiments/atis_added_features/crf_all_but_prefix/err/exp5.err
Queue 1
######################
Log = traces/atis_added_features/crf_all_but_prefix/exp6.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_prefix/exp6_model --training-proportion 0.8 --random-seed 6001 --threads 10 --test lab atis_readable/atis_all_feat_but_prefix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_prefix/out/exp6.out
Error  = experiments/atis_added_features/crf_all_but_prefix/err/exp6.err
Queue 1
######################
Log = traces/atis_added_features/crf_all_but_prefix/exp7.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_prefix/exp7_model --training-proportion 0.8 --random-seed 7001 --threads 10 --test lab atis_readable/atis_all_feat_but_prefix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_prefix/out/exp7.out
Error  = experiments/atis_added_features/crf_all_but_prefix/err/exp7.err
Queue 1
#######################
Log = traces/atis_added_features/crf_all_but_prefix/exp8.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_prefix/exp8_model --training-proportion 0.8 --random-seed 8001 --threads 10 --test lab atis_readable/atis_all_feat_but_prefix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_prefix/out/exp8.out
Error  = experiments/atis_added_features/crf_all_but_prefix/err/exp8.err
Queue 1
########################
Log = traces/atis_added_features/crf_all_but_prefix/exp9.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_prefix/exp9_model --training-proportion 0.8 --random-seed 9001 --threads 10 --test lab atis_readable/atis_all_feat_but_prefix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_prefix/out/exp9.out
Error  = experiments/atis_added_features/crf_all_but_prefix/err/exp9.err
Queue 1
##########################
Log = traces/atis_added_features/crf_all_but_prefix/exp10.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_prefix/exp10_model --training-proportion 0.8 --random-seed 1 --threads 10 --test lab atis_readable/atis_all_feat_but_prefix/atis3.pos

Output = experiments/atis_added_features/crf_all_but_prefix/out/exp10.out
Error  = experiments/atis_added_features/crf_all_but_prefix/err/exp10.err
Queue 1
#############################
