
### IDEA4RC Overview 

IDEA4RC aims at developing an IT infrastructure to facilitate the sharing and re-use of health data among clinical centers to promote research on rare cancers and improve patients’ access to high quality care. Our challenge is building a new tool to overcome interoperability issues and make it easier to comply with privacy regulations.

To achive this result a common data model has been agreed.

An overview of this model is provided in the [IDEA4RC Model Overview page](model-overview.html).

The IDEA4RC model has been formalized as HL7 FHIR Logical Models, listed in the following section.

<!-- table -->

### HL7 FHIR Models

The following table summarizes the logical models used by this guide.


<table  style="border-collapse: collapse; width: 100%" border="1" >
<thead>
<tr style="text-align: center;">
<td><strong>Name</strong></td>
<td><strong>Title</strong></td>
<td><strong>Description</strong></td>
</tr>
</thead>
<tbody>

{% for sd_hash in site.data.structuredefinitions -%}
  {%- assign sd = sd_hash[1] -%}
  {%- if sd.kind  == "logical" -%}
  <tr><td><a href="{{sd.path}}">{{sd.name}}</a></td><td>{{sd.title}}</td><td>{{sd.description}}</td></tr>
  {%- endif -%}
{%- endfor -%}

</tbody>
</table>