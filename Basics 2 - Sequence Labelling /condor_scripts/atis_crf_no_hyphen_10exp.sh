universe = vanilla
environment = CLASSPATH=./mallet-2.0.8RC3/class:mallet-2.0.8RC3/lib/mallet-deps.jar

Initialdir = .
Executable = /usr/bin/java

+Group   = "GRAD"
+Project = "INSTRUCTIONAL"
+ProjectDescription = "CS388 Homework 2"

###################
Log = traces/atis_added_features/crf_all_but_hyphen/exp1.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_hyphen/exp1_model --training-proportion 0.8 --random-seed 1001 --threads 10 --test lab atis_readable/atis_all_feat_but_hyphen/atis3.pos

Output = experiments/atis_added_features/crf_all_but_hyphen/out/exp1.out
Error  = experiments/atis_added_features/crf_all_but_hyphen/err/exp1.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_hyphen/exp2.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_hyphen/exp2_model --training-proportion 0.8 --random-seed 2001 --threads 10 --test lab atis_readable/atis_all_feat_but_hyphen/atis3.pos

Output = experiments/atis_added_features/crf_all_but_hyphen/out/exp2.out
Error  = experiments/atis_added_features/crf_all_but_hyphen/err/exp2.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_hyphen/exp3.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_hyphen/exp3_model --training-proportion 0.8 --random-seed 3001 --threads 10 --test lab atis_readable/atis_all_feat_but_hyphen/atis3.pos

Output = experiments/atis_added_features/crf_all_but_hyphen/out/exp3.out
Error  = experiments/atis_added_features/crf_all_but_hyphen/err/exp3.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_hyphen/exp4.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_hyphen/exp4_model --training-proportion 0.8 --random-seed 4001 --threads 10 --test lab atis_readable/atis_all_feat_but_hyphen/atis3.pos

Output = experiments/atis_added_features/crf_all_but_hyphen/out/exp4.out
Error  = experiments/atis_added_features/crf_all_but_hyphen/err/exp4.err
Queue 1
#####################
Log = traces/atis_added_features/crf_all_but_hyphen/exp5.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_hyphen/exp5_model --training-proportion 0.8 --random-seed 5001 --threads 10 --test lab atis_readable/atis_all_feat_but_hyphen/atis3.pos

Output = experiments/atis_added_features/crf_all_but_hyphen/out/exp5.out
Error  = experiments/atis_added_features/crf_all_but_hyphen/err/exp5.err
Queue 1
######################
Log = traces/atis_added_features/crf_all_but_hyphen/exp6.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_hyphen/exp6_model --training-proportion 0.8 --random-seed 6001 --threads 10 --test lab atis_readable/atis_all_feat_but_hyphen/atis3.pos

Output = experiments/atis_added_features/crf_all_but_hyphen/out/exp6.out
Error  = experiments/atis_added_features/crf_all_but_hyphen/err/exp6.err
Queue 1
######################
Log = traces/atis_added_features/crf_all_but_hyphen/exp7.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_hyphen/exp7_model --training-proportion 0.8 --random-seed 7001 --threads 10 --test lab atis_readable/atis_all_feat_but_hyphen/atis3.pos

Output = experiments/atis_added_features/crf_all_but_hyphen/out/exp7.out
Error  = experiments/atis_added_features/crf_all_but_hyphen/err/exp7.err
Queue 1
#######################
Log = traces/atis_added_features/crf_all_but_hyphen/exp8.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_hyphen/exp8_model --training-proportion 0.8 --random-seed 8001 --threads 10 --test lab atis_readable/atis_all_feat_but_hyphen/atis3.pos

Output = experiments/atis_added_features/crf_all_but_hyphen/out/exp8.out
Error  = experiments/atis_added_features/crf_all_but_hyphen/err/exp8.err
Queue 1
########################
Log = traces/atis_added_features/crf_all_but_hyphen/exp9.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_hyphen/exp9_model --training-proportion 0.8 --random-seed 9001 --threads 10 --test lab atis_readable/atis_all_feat_but_hyphen/atis3.pos

Output = experiments/atis_added_features/crf_all_but_hyphen/out/exp9.out
Error  = experiments/atis_added_features/crf_all_but_hyphen/err/exp9.err
Queue 1
##########################
Log = traces/atis_added_features/crf_all_but_hyphen/exp10.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.SimpleTagger --train true --model-file models/atis_added_features/crf_all_but_hyphen/exp10_model --training-proportion 0.8 --random-seed 1 --threads 10 --test lab atis_readable/atis_all_feat_but_hyphen/atis3.pos

Output = experiments/atis_added_features/crf_all_but_hyphen/out/exp10.out
Error  = experiments/atis_added_features/crf_all_but_hyphen/err/exp10.err
Queue 1
#############################
