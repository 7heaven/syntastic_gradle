#!/bin/bash

if [[ -n 'build.gradle' ]]
then
    echo "apply from: '$(dirname $0)/syntastic.gradle'" >> build.gradle

    if [[ -z '$1' ]]
    then
        1=''
    fi

    ./gradlew clean
    ./gradlew assembleRelease $1
  
    grep -v "syntastic\.gradle" build.gradle > build.gradle.tmp.syntastic && mv build.gradle.tmp.syntastic build.gradle
else
	echo "build.gradle file not found!"
fi
