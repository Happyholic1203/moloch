#!/bin/sh

TDIR=_TDIR_

cd ${TDIR}/elasticsearch-_ES_
ulimit -a
# Uncomment if using Sun Java for better memory utilization
# export JAVA_OPTS="-XX:+UseCompressedOops"
export ES_HOSTNAME=`hostname -s`a

if [ -z "$ES_HEAP_SIZE" ]; then
    export ES_HEAP_SIZE=_ESMEM_
fi

bin/elasticsearch -Des.config=${TDIR}/etc/elasticsearch.yml -d
