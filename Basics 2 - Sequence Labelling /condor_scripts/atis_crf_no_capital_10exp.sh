universe = vanilla
environment = CLASSPATH=./mallet-2.0.8RC3/class:mallet-2.0.8RC3/lib/mallet-deps.jar

Initialdir = .
Executable = /usr/bin/java

+Group   = "GRAD"
+Project = "INSTRUCTIONAL"
+ProjectDescription = "CS388 Homework 2"

###################
Log = traces/atis_added_features/crf_all_but_capitalization/exp1.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_capitalization/exp1_model --training-proportion 0.8 --random-seed 1001 --threads 10 --test lab atis_readable/atis_all_feat_but_capitalization/atis3.pos

Output = experiments/atis_added_features/crf_all_but_capitalization/out/exp1.out
Error  = experiments/atis_added_features/crf_all_but_capitalization/err/exp1.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_capitalization/exp2.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_capitalization/exp2_model --training-proportion 0.8 --random-seed 2001 --threads 10 --test lab atis_readable/atis_all_feat_but_capitalization/atis3.pos

Output = experiments/atis_added_features/crf_all_but_capitalization/out/exp2.out
Error  = experiments/atis_added_features/crf_all_but_capitalization/err/exp2.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_capitalization/exp3.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_capitalization/exp3_model --training-proportion 0.8 --random-seed 3001 --threads 10 --test lab atis_readable/atis_all_feat_but_capitalization/atis3.pos

Output = experiments/atis_added_features/crf_all_but_capitalization/out/exp3.out
Error  = experiments/atis_added_features/crf_all_but_capitalization/err/exp3.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_capitalization/exp4.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_capitalization/exp4_model --training-proportion 0.8 --random-seed 4001 --threads 10 --test lab atis_readable/atis_all_feat_but_capitalization/atis3.pos

Output = experiments/atis_added_features/crf_all_but_capitalization/out/exp4.out
Error  = experiments/atis_added_features/crf_all_but_capitalization/err/exp4.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_capitalization/exp5.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_capitalization/exp5_model --training-proportion 0.8 --random-seed 5001 --threads 10 --test lab atis_readable/atis_all_feat_but_capitalization/atis3.pos

Output = experiments/atis_added_features/crf_all_but_capitalization/out/exp5.out
Error  = experiments/atis_added_features/crf_all_but_capitalization/err/exp5.err
Queue 1
######################
Log = traces/atis_added_features/crf_all_but_capitalization/exp6.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_capitalization/exp6_model --training-proportion 0.8 --random-seed 6001 --threads 10 --test lab atis_readable/atis_all_feat_but_capitalization/atis3.pos

Output = experiments/atis_added_features/crf_all_but_capitalization/out/exp6.out
Error  = experiments/atis_added_features/crf_all_but_capitalization/err/exp6.err
Queue 1
######################
Log = traces/atis_added_features/crf_all_but_capitalization/exp7.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_capitalization/exp7_model --training-proportion 0.8 --random-seed 7001 --threads 10 --test lab atis_readable/atis_all_feat_but_capitalization/atis3.pos

Output = experiments/atis_added_features/crf_all_but_capitalization/out/exp7.out
Error  = experiments/atis_added_features/crf_all_but_capitalization/err/exp7.err
Queue 1
#######################
Log = traces/atis_added_features/crf_all_but_capitalization/exp8.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_capitalization/exp8_model --training-proportion 0.8 --random-seed 8001 --threads 10 --test lab atis_readable/atis_all_feat_but_capitalization/atis3.pos

Output = experiments/atis_added_features/crf_all_but_capitalization/out/exp8.out
Error  = experiments/atis_added_features/crf_all_but_capitalization/err/exp8.err
Queue 1
########################
Log = traces/atis_added_features/crf_all_but_capitalization/exp9.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_capitalization/exp9_model --training-proportion 0.8 --random-seed 9001 --threads 10 --test lab atis_readable/atis_all_feat_but_capitalization/atis3.pos

Output = experiments/atis_added_features/crf_all_but_capitalization/out/exp9.out
Error  = experiments/atis_added_features/crf_all_but_capitalization/err/exp9.err
Queue 1
##########################
Log = traces/atis_added_features/crf_all_but_capitalization/exp10.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_capitalization/exp10_model --training-proportion 0.8 --random-seed 1 --threads 10 --test lab atis_readable/atis_all_feat_but_capitalization/atis3.pos

Output = experiments/atis_added_features/crf_all_but_capitalization/out/exp10.out
Error  = experiments/atis_added_features/crf_all_but_capitalization/err/exp10.err
Queue 1
#############################
