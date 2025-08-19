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



############################################################################################################
# Now let's plot the data
library(dplyr)
library(ggplot2)
amph <- read.csv(file.choose(), header = TRUE, sep = ",") # Load the data of all assessments
rept <- read.csv(file.choose(), header = TRUE, sep = ",") # Load the data of all assessments

# Function to create heatmap 
plot_heatmap <- function(df, title) {
  
  # Define the typical IUCN order
  iucn_order <- c("LC", "NT", "VU", "EN", "CR", "EW", "EX")
  
  df <- df %>%
    mutate(
      red_list_category_code = factor(red_list_category_code,
                                      levels = iucn_order,
                                      ordered = TRUE)
    )
  
  # Range of years in the dataset
  year_range <- range(df$year_published, na.rm = TRUE)
  
  ggplot(df, aes(x = year_published, 
                 y = taxon_scientific_name, 
                 fill = red_list_category_code)) +
    geom_tile(color = "grey70") +
    scale_fill_brewer(type = "seq", palette = "Reds", na.value = "white", name = "IUCN Category") +
    scale_x_continuous(breaks = seq(year_range[1], year_range[2], by = 1)) +
    labs(title = title,
         x = "Assessment Year",
         y = "Species") +
    theme_minimal() +
    theme(
      axis.text.y = element_text(size = 6),
      axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1),
      panel.grid = element_blank()
    )
}

# Amphibians heatmap
plot_heatmap(amph, "Amphibians: IUCN Red List Assessments")

# Reptiles heatmap
plot_heatmap(rept, "Reptiles: IUCN Red List Assessments")

