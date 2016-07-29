#!/usr/bin/env sh

DIR="$(dirname $0)"
LOCAL_ROOT=$(readlink -f $DIR/../..)

docker run -it --rm -v $LOCAL_ROOT:/data digitallyseamless/nodejs-bower-grunt grunt build