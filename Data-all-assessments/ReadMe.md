# Repository file description
The file "data_for_analysis_20260127.csv" contains the following data: 

|       Column Name            |     Description              |
|------------------------------|:---------------------------:|
| year_published               |Year that the IUCN assessment was published          |
| latest                       |Is this the latest IUCN assessment available for this species?  |
| possibly_extinct             |Is the species possibly extinct? |
| possibly_extinct_in_the_wild |Is the species possibly extinct in the wild?  |
| sis_taxon_id	               |Taxon ID (IUCN)   |
| url	                       |Link to the webpage of the IUCN assessment      |
| taxon_scientific_name	       |Genus and species |
| red_list_category_code	   |IUCN threat category per species/year/assessment/scope  |
| assessment_id	               |Unique identifier for each assessment  |
| kingdom                      |Taxonomic information about the species (Kingdom)    |
| phylum                       |Taxonomic information about the species (Phylum)  |
| class                        |Taxonomic information about the species (Class)  |
| order                        |Taxonomic information about the species (Order)   |
| family                       |Taxonomic information about the species (Family)  |
| genus                        |Taxonomic information about the species (Genus)   |
| species                      |Taxonomic information about the species (Species)  |
| scope_description	           |The geographic scope of the assessment     |
| endemic                      |Is the species endemic?  |

Some notes on the data
=======
* In the original downloads, IUCN assessments for endemic species can have double/triple scope tags (e.g. the assessment for a species that is endemic to Europe will have a scope "Global;Europe").
* The scope Europe and Mediterranean were introduced later.
