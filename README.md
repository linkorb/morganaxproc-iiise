morgana-schematron-issue
========================

This is a minimal test-case to help debugging https://sourceforge.net/p/morganaxproc-iiise/tickets/32/

The `downloads/` directory contains pre-downloaded versions of libraries used:

* https://sourceforge.net/projects/morganaxproc-iiise/files/MorganaXProc-IIIse-0.9.3-beta/MorganaXProc-IIIse-0.9.3-beta.zip/download
* https://sourceforge.net/projects/morganaxproc-iiise/files/MorganaXProc-IIIse-0.9.0-beta/MorganaXProc-IIIse-0.9.0-beta.zip/download
* https://github.com/Schematron/stf/archive/master.zip
* https://sourceforge.net/projects/saxon/files/Saxon-HE/9.9/SaxonHE9-9-1-7J.zip/download

These have been extracted in the root of this repo into their own directories, and committed to git.

The SaxonHE9-9-1-7J.zip has been extracted, and the .jar files have been copied into `MorganaXProc-IIIse_lib` of both Morgana directories.

## Test scripts

## run-0.9.0-skeleton.sh

Run the pipeline using MorganaXProc-IIIse-0.9.0-beta and the skeleton schematron connector

## Output:

```sh
./run-0.9.0-skeleton.sh
=================================
MorganaXProc-IIIse 0.9.0-beta
Copyright 2011-2020 by <xml-project /> Achim Berndzen
=================================

Using Saxon-HE 9.9.1.7. XSLT and XQuery processor developed by Saxonica Limited
Using Schematron.com Skeleton Module: Copyright (c)  2000-2010 Rick Jellife and Academia Sinica Computing Centre, Taiwan.
<validation-reports xmlns="http://www.xproc.org/ns/xvrl">
   <metadata>
      <timestamp>2020-06-01T13:11:14+02:00</timestamp>
   </metadata>
   <validation-report/>
</validation-reports>
```

This is the expected output


## run-0.9.3-skeleton.sh

Run the pipeline using MorganaXProc-IIIse-0.9.3-beta and the skeleton schematron connector

## Output:

```sh
./run-0.9.3-skeleton.sh
=================================
MorganaXProc-IIIse 0.9.3-beta
Copyright 2011-2020 by <xml-project /> Achim Berndzen
=================================

Using Saxon-HE 9.9.1.7. XSLT and XQuery processor developed by Saxonica Limited
Using Schematron.com Skeleton Module: Copyright (c)  2000-2010 Rick Jellife and Academia Sinica Computing Centre, Taiwan.
<?xml version="1.0" encoding="UTF-8"?>
<c:errors xmlns:c="http://www.w3.org/ns/xproc-step"><c:error code="err:Pending2" name="validate-contacts" type="p:validate-with-schematron" href="file:///Users/joostfaassen/git/linkorb/morgana-schematron-issue/pipeline.xpl" line="12" column="76" xmlns:p="http://www.w3.org/ns/xproc" xmlns:err="http://www.w3.org/ns/xproc-error"><message>Error occurred: Unable to initialize schematron templates. Reason: 'Resource not found: iso_dsdl_include.xsl [java.io.FileNotFoundException] [java.lang.Exception]</message></c:error></c:errors>
```


## run-0.9.0-schxslt.sh

Run the pipeline using MorganaXProc-IIIse-0.9.0-beta and the SchXSLT schematron connector

## run-0.9.3-schxslt.sh

Run the pipeline using MorganaXProc-IIIse-0.9.3-beta and the SchXSLT schematron connector

## Output:

```sh
./run-0.9.3-schxslt.sh
=================================
MorganaXProc-IIIse 0.9.3-beta
Copyright 2011-2020 by <xml-project /> Achim Berndzen
=================================

Using Saxon-HE 9.9.1.7. XSLT and XQuery processor developed by Saxonica Limited
SchXslt is copyright (c) 2018-2020 by David Maus <dmaus@dmaus.name> and released under the terms of the MIT license.
<?xml version="1.0" encoding="UTF-8"?>
<c:errors xmlns:c="http://www.w3.org/ns/xproc-step"><c:error code="err:Pending2" name="validate-contacts" type="p:validate-with-schematron" href="file:///Users/joostfaassen/git/linkorb/morgana-schematron-issue/pipeline.xpl" line="12" column="76" xmlns:p="http://www.w3.org/ns/xproc" xmlns:err="http://www.w3.org/ns/xproc-error"><message>Error occurred: Unable to initialize schematron templates. Reason: 'Resource not found: include.xsl [java.io.FileNotFoundException] [java.lang.Exception]</message></c:error></c:errors>
```



