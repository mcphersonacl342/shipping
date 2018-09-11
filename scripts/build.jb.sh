#!/usr/bin/env bash

set -ev

SCRIPT_DIR=$(dirname "$0")

CODE_DIR=$(cd $SCRIPT_DIR/..; pwd)
echo $CODE_DIR
# $DOCKER_CMD run --rm -v $HOME/.m2:/root/.m2 -v $CODE_DIR:/usr/src/mymaven -w /usr/src/mymaven maven:3.2-jdk-8 mvn -DskipTests package

cp $CODE_DIR/target/*.jar $CODE_DIR/docker/$(basename $CODE_DIR)

#for m in ./docker/*/; do
#    REPO=${GROUP}/$(basename $m)
#    docker build -t jbraeuer/shipping:latest $CODE_DIR/$m;
#done;

#docker push jbraeuer/shipping:latest
