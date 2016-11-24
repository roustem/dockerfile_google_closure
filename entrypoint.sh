#! /bin/sh

if [ $# -eq 0 ]; then
	/usr/bin/java -jar closure-compiler.jar
else
	/usr/bin/java -jar closure-compiler.jar "$@"
fi