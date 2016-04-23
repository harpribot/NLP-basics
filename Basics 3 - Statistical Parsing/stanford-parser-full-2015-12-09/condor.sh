universe = vanilla
environment = CLASSPATH=.:stanford-parser-full-2015-12-09/stanford-parser.jar:stanford-parser-full-2015-12-09/slf4j-api.jar

Initialdir = .
Executable = /usr/bin/java

+Group   = "GRAD"
+Project = "INSTRUCTIONAL"
+ProjectDescription = "CS388 Homework 3"

###################
Log = traces/exp.log

Notification = Always
Notify_user = harshal@cs.utexas.edu

Arguments = UnsupervisedDomainAdapter wsj brown 1000 0.3


Output = output/exp.out
Error  = error/exp.err

Queue 1
