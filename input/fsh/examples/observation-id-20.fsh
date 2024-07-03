Instance: observation-id-20
InstanceOf: $bmi
Title: "Observation: BMI"
Usage: #example
* status = #final
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* effectiveDateTime = "2024-07-02" // invented date
* subject = Reference(patient-id-17)
* valueQuantity = 25.700000762939453 'kg/m2' "kilogram per square meter"