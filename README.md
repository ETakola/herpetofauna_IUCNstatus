# Temporal changes in IUCN status of European herpetofauna
Shifts in the IUCN conservation status of European herpetofauna over time signal underlying ecological pressures and emerging conservation challenges. Quantitatively estimating these changes is essential for identifying species at greatest risk and evaluating the effectiveness of conservation measures over time. Herpetofauna, including amphibians and reptiles, are particularly sensitive to environmental changes, making them valuable bioindicators. By systematically analyzing shifts in IUCN statuses, researchers can uncover trends in extinction risk and link them to potential drivers such as habitat loss, land-use change, and especially climate change. Understanding these associations is crucial for predicting future vulnerabilities and guiding targeted conservation strategies across Europe’s rapidly changing landscapes.

If you would like to contribute to this project, feel free to contact me!

![1654097821](https://github.com/user-attachments/assets/b0d8a5ac-376e-4d6d-9ef1-a972a0277e89)
Picture 1. A Cretan wall lizard (Source: https://www.eurolizards.com/lizards/podarcis-cretensis/)

# File Explanation
amphibans_RedList_Report2009.csv : Appendix of 2009 report (https://portals.iucn.org/library/sites/library/files/documents/RL-4-001.pdf)

amphibians_all_assessments.csv : all assessments ever made by IUCN for amphibian species in the 2009 IUCN report

amphibians_missing_species_2020.csv : a file that explains why some species appear in the report of 2009 but not in the 2020 checklist

amphibians_only_species2009.csv : list of species from the 2009 IUCN report

get_iucn_status_20250818.R : function to get all IUCN assessments for species (input is a list with species names)

reptiles_RedList_Report2009.csv : Appendix of 2009 report (https://portals.iucn.org/library/sites/library/files/documents/RL-4-004.pdf)

reptiles_all_assessments.csv : all assessments ever made by IUCN for reptile species in the 2009 IUCN report

reptiles_missing_species_2020.csv : a file that explains why some species appear in the report of 2009 but not in the 2020 checklist

reptiles_only_species2009.csv : list of species from the 2009 IUCN report

testcode.txt : script with test code

# Data sources

## Reptiles

Cox, N.A. and Temple, H.J. 2009. European Red List of Reptiles. Luxembourg: Office for Official Publications of the European Communities. (https://portals.iucn.org/library/sites/library/files/documents/RL-4-004.pdf)

## Amphibians

Temple, H.J. and Cox, N.A. 2009. European Red List of Amphibians. Luxembourg: Office for Official Publications of the European Communities. (https://portals.iucn.org/library/sites/library/files/documents/RL-4-001.pdf)

## Herpetofauna species checklist

Speybroeck, J., Beukema, W., Dufresnes, C., Fritz, U., Jablonski, D., Lymberakis, P., ... & Crochet, P. A. (2020). Species list of the European herpetofauna–2020 update by the Taxonomic Committee of the Societas Europaea Herpetologica. Amphibia-Reptilia, 41(2), 139-189. (https://doi.org/10.1163/15685381-bja10010)
