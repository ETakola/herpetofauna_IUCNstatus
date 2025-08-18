# Arbeitsverzeichnis
setwd("C:/Users/Jojo/Desktop/Neuer Ordner/Johannes/Uni/Fächer/Bachelorarbeit/R")

# packages installieren
install.packages("rredlist")
install.packages("dplyr")
install.packages("readxl")

# packages laden
library(rredlist)
library(dplyr)
library(readxl)


# Artentabelle importieren
arten <- read_excel("reptiles_only_species.xlsx")
arten_liste <- arten$Species



# assessments data für bestimmte Art ziehen und speichern
art_data <- rl_species("Pelophylax", "shqipericus")$assessments
art_data <- rl_assessment(arten$Species)$results

# assessments data nach Jahr und Red List category filtern
assessment_data <- art_data %>%
  select(year_published, red_list_category_code) %>%
  arrange(desc(year_published))

# fertig gefilterte assessments data anzeigen
print(assessment_data)



assessment_results <- lapply(arten, assessment_data) %>%
  bind_rows()

get_all_assessments <- function(species_name) {
  res <- rl_species("species_name")$assessments
  assessments <- res$result
  
  
  if (is.null(assessments) || length(assessments) == 0) {
    return(data.frame(
      species = species_name,
      year_published = NA,
      red_list_category_code = NA,
      stringsAsFactors = FALSE
    ))
  }
  
  data.frame(
    species = species_name,
    year = sapply(assessments, function(x) x$year_published),
    category = sapply(assessments, function(x) x$red_list_category_code),
    stringsAsFactors = FALSE
  )
}  

iucn_tabelle <- bind_rows(lapply(arten_liste, get_all_assessments))
