universe = vanilla
environment = CLASSPATH=./mallet-2.0.8RC3/class:mallet-2.0.8RC3/lib/mallet-deps.jar

Initialdir = .
Executable = /usr/bin/java

+Group   = "GRAD"
+Project = "INSTRUCTIONAL"
+ProjectDescription = "CS388 Homework 2"

###################
Log = traces/atis_added_features/crf_all_but_number/exp1.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_number/exp1_model --training-proportion 0.8 --random-seed 1001 --threads 10 --test lab atis_readable/atis_all_feat_but_number/atis3.pos

Output = experiments/atis_added_features/crf_all_but_number/out/exp1.out
Error  = experiments/atis_added_features/crf_all_but_number/err/exp1.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_number/exp2.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_number/exp2_model --training-proportion 0.8 --random-seed 2001 --threads 10 --test lab atis_readable/atis_all_feat_but_number/atis3.pos

Output = experiments/atis_added_features/crf_all_but_number/out/exp2.out
Error  = experiments/atis_added_features/crf_all_but_number/err/exp2.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_number/exp3.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_number/exp3_model --training-proportion 0.8 --random-seed 3001 --threads 10 --test lab atis_readable/atis_all_feat_but_number/atis3.pos

Output = experiments/atis_added_features/crf_all_but_number/out/exp3.out
Error  = experiments/atis_added_features/crf_all_but_number/err/exp3.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_number/exp4.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_number/exp4_model --training-proportion 0.8 --random-seed 4001 --threads 10 --test lab atis_readable/atis_all_feat_but_number/atis3.pos

Output = experiments/atis_added_features/crf_all_but_number/out/exp4.out
Error  = experiments/atis_added_features/crf_all_but_number/err/exp4.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_number/exp5.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_number/exp5_model --training-proportion 0.8 --random-seed 5001 --threads 10 --test lab atis_readable/atis_all_feat_but_number/atis3.pos

Output = experiments/atis_added_features/crf_all_but_number/out/exp5.out
Error  = experiments/atis_added_features/crf_all_but_number/err/exp5.err
Queue 1
######################
Log = traces/atis_added_features/crf_all_but_number/exp6.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_number/exp6_model --training-proportion 0.8 --random-seed 6001 --threads 10 --test lab atis_readable/atis_all_feat_but_number/atis3.pos

Output = experiments/atis_added_features/crf_all_but_number/out/exp6.out
Error  = experiments/atis_added_features/crf_all_but_number/err/exp6.err
Queue 1
######################
Log = traces/atis_added_features/crf_all_but_number/exp7.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_number/exp7_model --training-proportion 0.8 --random-seed 7001 --threads 10 --test lab atis_readable/atis_all_feat_but_number/atis3.pos

Output = experiments/atis_added_features/crf_all_but_number/out/exp7.out
Error  = experiments/atis_added_features/crf_all_but_number/err/exp7.err
Queue 1
#######################
Log = traces/atis_added_features/crf_all_but_number/exp8.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_number/exp8_model --training-proportion 0.8 --random-seed 8001 --threads 10 --test lab atis_readable/atis_all_feat_but_number/atis3.pos

Output = experiments/atis_added_features/crf_all_but_number/out/exp8.out
Error  = experiments/atis_added_features/crf_all_but_number/err/exp8.err
Queue 1
########################
Log = traces/atis_added_features/crf_all_but_number/exp9.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_number/exp9_model --training-proportion 0.8 --random-seed 9001 --threads 10 --test lab atis_readable/atis_all_feat_but_number/atis3.pos

Output = experiments/atis_added_features/crf_all_but_number/out/exp9.out
Error  = experiments/atis_added_features/crf_all_but_number/err/exp9.err
Queue 1
##########################
Log = traces/atis_added_features/crf_all_but_number/exp10.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_number/exp10_model --training-proportion 0.8 --random-seed 1 --threads 10 --test lab atis_readable/atis_all_feat_but_number/atis3.pos

Output = experiments/atis_added_features/crf_all_but_number/out/exp10.out
Error  = experiments/atis_added_features/crf_all_but_number/err/exp10.err
Queue 1
#############################
