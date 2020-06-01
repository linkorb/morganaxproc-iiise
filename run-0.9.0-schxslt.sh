#!/bin/bash

echo "Afaik morgana 0.9.0 didn't yet support SchXSLT"
exit -1
CURRENT_SCRIPT=$0
echo $0
MORGANA_HOME=$(dirname $CURRENT_SCRIPT)/MorganaXProc-IIIse-0.9.0-beta
MORGANA_LIB=$MORGANA_HOME/MorganaXProc-IIIse_lib
java -jar -javaagent:$MORGANA_LIB/quasar-core-0.7.9.jar $MORGANA_HOME/MorganaXProc-IIIse.jar -config=config-schxslt.xml pipeline.xpl -input:source=xml/contacts.xml

