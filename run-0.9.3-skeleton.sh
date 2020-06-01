#!/bin/bash

CURRENT_SCRIPT=$0
echo $0
MORGANA_HOME=$(dirname $CURRENT_SCRIPT)/MorganaXProc-IIIse-0.9.3-beta
MORGANA_LIB=$MORGANA_HOME/MorganaXProc-IIIse_lib
java -jar -javaagent:$MORGANA_LIB/quasar-core-0.7.9.jar $MORGANA_HOME/MorganaXProc-IIIse.jar -config=config-skeleton.xml pipeline.xpl -input:source=xml/contacts.xml

