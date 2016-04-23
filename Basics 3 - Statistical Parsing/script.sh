#!/bin/sh
# Compile the UnsupervisedDomainAdapter
javac -cp .:stanford-parser-full-2015-12-09/stanford-parser.jar:stanford-parser-full-2015-12-09/slf4j-api.jar UnsupervizedDomainAdapter.java

# Run the UnsupervisedDomainAdapter
#java -cp .:stanford-parser-full-2015-12-09/stanford-parser.jar:stanford-parser-full-2015-12-09/slf4j-api.jar UnsupervizedDomainAdapter wsj brown 1000 0.1
