# Temporal changes in IUCN status of European herpetofauna
Shifts in the IUCN conservation status of European herpetofauna over time signal underlying ecological pressures and emerging conservation challenges. Quantitatively estimating these changes is essential for identifying species at greatest risk and evaluating the effectiveness of conservation measures over time. Herpetofauna, including amphibians and reptiles, are particularly sensitive to environmental changes, making them valuable bioindicators. By systematically analyzing shifts in IUCN statuses, researchers can uncover trends in extinction risk and link them to potential drivers such as habitat loss, land-use change, and especially climate change. Understanding these associations is crucial for predicting future vulnerabilities and guiding targeted conservation strategies across Europe’s rapidly changing landscapes.

If you would like to contribute to this project, feel free to contact me!

![1654097821](https://github.com/user-attachments/assets/b0d8a5ac-376e-4d6d-9ef1-a972a0277e89)
Picture 1. A Cretan wall lizard (Source: https://www.eurolizards.com/lizards/podarcis-cretensis/)

# Files in the repository

The folder **Data-input-species-list** contains two species lists (one for amphibians and one for reptiles). These species lists are aggragates of the IUCN reports (2009) and the latest herpetofauna checklist (2020). 

The folder **Data-all-assessments** contains two Excel tables with all species-level conservation status assessments that were found in the IUCN database. They were compiled using the script "get_iucn_status_20250818.R".

The folder **Results** contains the visualizations of the data and the produced tables. 

The folder **Scripts** contains the R code that was used to obtain all previous IUCN assessments for each species (get_iucn_status_20250818.R).

# Data sources
We compiled a list of species names using the most recent checklist of European herpetofauna (published by the Societas Europaea Herpetologica in 2020) and the Red Lists published by IUCN in 2009. 

## Reptiles

Cox, N.A. and Temple, H.J. 2009. European Red List of Reptiles. Luxembourg: Office for Official Publications of the European Communities. (https://portals.iucn.org/library/sites/library/files/documents/RL-4-004.pdf)

## Amphibians

Temple, H.J. and Cox, N.A. 2009. European Red List of Amphibians. Luxembourg: Office for Official Publications of the European Communities. (https://portals.iucn.org/library/sites/library/files/documents/RL-4-001.pdf)

## Herpetofauna species checklist

Speybroeck, J., Beukema, W., Dufresnes, C., Fritz, U., Jablonski, D., Lymberakis, P., ... & Crochet, P. A. (2020). Species list of the European herpetofauna–2020 update by the Taxonomic Committee of the Societas Europaea Herpetologica. Amphibia-Reptilia, 41(2), 139-189. (https://doi.org/10.1163/15685381-bja10010)

# Import methodological decisions during the data compilation and pre-processing stage

* Regarding the assessment scope: We selected the *Europe* scope for all species that are non-endemic to Europe and *Global* scope for all endemic species. An exception was made for the species *Euleptes europaea*, which is a non-endemic, but its distribution outside Europe is very limited, thus the Europe and Global scope have a significant overlap when it comes to geography.
* *Rare* and *Lower Rick/conservation-dependent* are two threat categories that were deprecated in 1994 and 2001 respectively. We replaced them with the closest (previous or later) category of the current classification system.

<details><summary>Links to the official IUCN website.</summary>
https://www.iucnredlist.org/assessment/process
https://www.iucnredlist.org/assessment/updates
