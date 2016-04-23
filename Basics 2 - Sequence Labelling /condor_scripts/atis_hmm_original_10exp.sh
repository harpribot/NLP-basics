universe = vanilla
environment = CLASSPATH=./mallet-2.0.8RC3/class:mallet-2.0.8RC3/lib/mallet-deps.jar

Initialdir = .
Executable = /usr/bin/java

+Group   = "GRAD"
+Project = "INSTRUCTIONAL"
+ProjectDescription = "CS388 Homework 2"

###################
Log = traces/atis_original/hmm_10experiments/exp1.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/atis_original/hmm_10experiments/exp1_model --training-proportion 0.8 --random-seed 1001 --test lab atis_readable/atis_original/atis3.pos

Output = experiments/atis_original/hmm_10experiments/out/exp1.out
Error  = experiments/atis_original/hmm_10experiments/err/exp1.err
Queue 1
#####################
Log = traces/atis_original/hmm_10experiments/exp2.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/atis_original/hmm_10experiments/exp2_model --training-proportion 0.8 --random-seed 2001 --test lab atis_readable/atis_original/atis3.pos

Output = experiments/atis_original/hmm_10experiments/out/exp2.out
Error  = experiments/atis_original/hmm_10experiments/err/exp2.err
Queue 1
#####################
Log = traces/atis_original/hmm_10experiments/exp3.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/atis_original/hmm_10experiments/exp3_model --training-proportion 0.8 --random-seed 3001 --test lab atis_readable/atis_original/atis3.pos

Output = experiments/atis_original/hmm_10experiments/out/exp3.out
Error  = experiments/atis_original/hmm_10experiments/err/exp3.err
Queue 1
#####################
Log = traces/atis_original/hmm_10experiments/exp4.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/atis_original/hmm_10experiments/exp4_model --training-proportion 0.8 --random-seed 4001 --test lab atis_readable/atis_original/atis3.pos

Output = experiments/atis_original/hmm_10experiments/out/exp4.out
Error  = experiments/atis_original/hmm_10experiments/err/exp4.err
Queue 1
#####################
Log = traces/atis_original/hmm_10experiments/exp5.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/atis_original/hmm_10experiments/exp5_model --training-proportion 0.8 --random-seed 5001 --test lab atis_readable/atis_original/atis3.pos

Output = experiments/atis_original/hmm_10experiments/out/exp5.out
Error  = experiments/atis_original/hmm_10experiments/err/exp5.err
Queue 1
######################
Log = traces/atis_original/hmm_10experiments/exp6.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/atis_original/hmm_10experiments/exp6_model --training-proportion 0.8 --random-seed 6001 --test lab atis_readable/atis_original/atis3.pos

Output = experiments/atis_original/hmm_10experiments/out/exp6.out
Error  = experiments/atis_original/hmm_10experiments/err/exp6.err
Queue 1
######################
Log = traces/atis_original/hmm_10experiments/exp7.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/atis_original/hmm_10experiments/exp7_model --training-proportion 0.8 --random-seed 7001 --test lab atis_readable/atis_original/atis3.pos

Output = experiments/atis_original/hmm_10experiments/out/exp7.out
Error  = experiments/atis_original/hmm_10experiments/err/exp7.err
Queue 1
#######################
Log = traces/atis_original/hmm_10experiments/exp8.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/atis_original/hmm_10experiments/exp8_model --training-proportion 0.8 --random-seed 8001 --test lab atis_readable/atis_original/atis3.pos

Output = experiments/atis_original/hmm_10experiments/out/exp8.out
Error  = experiments/atis_original/hmm_10experiments/err/exp8.err
Queue 1
########################
Log = traces/atis_original/hmm_10experiments/exp9.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/atis_original/hmm_10experiments/exp9_model --training-proportion 0.8 --random-seed 9001 --test lab atis_readable/atis_original/atis3.pos

Output = experiments/atis_original/hmm_10experiments/out/exp9.out
Error  = experiments/atis_original/hmm_10experiments/err/exp9.err
Queue 1
##########################
Log = traces/atis_original/hmm_10experiments/exp10.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = cc.mallet.fst.HMMSimpleTagger --train true --model-file models/atis_original/hmm_10experiments/exp10_model --training-proportion 0.8 --random-seed 1 --test lab atis_readable/atis_original/atis3.pos

Output = experiments/atis_original/hmm_10experiments/out/exp10.out
Error  = experiments/atis_original/hmm_10experiments/err/exp10.err
Queue 1
#############################
