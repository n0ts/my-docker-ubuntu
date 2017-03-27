#!/bin/bash

set -e

java \
    $JAVA_OPTS \
    -Djava.library.path=$DYNAMODB_LOCAL_DIR/DynamoDBLocal_lib \
    -jar $DYNAMODB_LOCAL_DIR/DynamoDBLocal.jar \
    "$@"
