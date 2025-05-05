ValueSet: CodedTestResultsVS
Id: coded-test-results-athena-vs  
Title: "Coded test results: Athena."
Description: "Codes identifing the coded test resoults."


* ^experimental = false
* codes from valueset MitoticIndexVS
* codes from valueset PositiveNegativeNoTestVS


ValueSet: MitoticIndexVS
Id: mitotic-index-athena-vs  
Title: "Mitotic Index: Athena."
Description: "Identifing codes for the observed mitotic index"


* ^experimental = false
* $athena#4240574 "Less than 10 mitoses per 10 HPF (score = 1)"
* $athena#4241298 "10-20 mitoses per 10 HPF (score = 2)"
* $athena#4240069 "Greater than 10 mitoses per 10 HPF (score = 3)"





ValueSet: PositiveNegativeNoTestVS
Id: positive-negative-notest-athena-vs
Title: "Positive-Negative-No Test: Athena"
Description: "Identifying codes for the observed plasmatic EBV DNA at baseline"



* ^experimental = false

* $athena#9191 "Positive" 
* $athena#9189 "Negative" 
* $athena#45878602 "Not tested"