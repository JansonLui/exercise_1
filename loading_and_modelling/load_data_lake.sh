#!/bin/bash

file=$1
tail -n+2 $file > ${file%????}

hdfs dfs -mkdir -p /user/w205/hospital_compare

hdfs dfs -mkdir /user/w205/hospital_compare/${file%????}
hdfs dfs -put ${file%????} /user/w205/hospital_compare/${file%????}/$file

rm ${file%????}
