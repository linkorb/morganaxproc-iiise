<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
    <title> Schematron file for REPC_IN004014NL - Kernset aanleverbericht </title>
    <pattern name="Check structure">
        <rule context="contact">
            <assert test="@id">The element contact must have an id attribute</assert>
        </rule>
    </pattern>
</schema>