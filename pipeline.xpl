<p:declare-step xmlns:p="http://www.w3.org/ns/xproc" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" version="3.0">
            
	<p:output port="result" serialization="map{'indent' : true()}" />
	
	<p:input port="source" primary="true">
		<p:documentation>Input contacts.xml file (see xml/)</p:documentation>
	</p:input>
	
	<p:identity />
	
	<p:validate-with-schematron name="validate-contacts" report-format="xvrl">
		<p:with-input port="schema" href="schematron/contacts.sch" />
	</p:validate-with-schematron>

	<p:identity>
		<p:with-input port="source" pipe="report@validate-contacts" />
	</p:identity>

</p:declare-step>
