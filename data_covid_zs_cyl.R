library(readr)
data_enfermos <- read_delim("https://analisis.datosabiertos.jcyl.es/explore/dataset/tasa-enfermos-acumulados-por-areas-de-salud/download/?format=csv&timezone=Europe/Berlin&lang=es&use_labels_for_header=true&csv_separator=%3B", 
                                                                         ";", escape_double = FALSE, trim_ws = TRUE)

data_enfermos2 <- data_enfermos[,c("FECHA", "CS", "TOTALENFERMEDAD", "TSI", "PCR_REALIZADOS", "PCR_POSITIVOS", "PCR_POSITIVOS_SINTOMAS")]

names(data_enfermos2)[names(data_enfermos2) == "FECHA"] <- "fecha"
names(data_enfermos2)[names(data_enfermos2) == "CS"] <- "cs"
names(data_enfermos2)[names(data_enfermos2) == "TOTALENFERMEDAD"] <- "nuevos_casos"
names(data_enfermos2)[names(data_enfermos2) == "TSI"] <- "tarjetas_sanitarias"
names(data_enfermos2)[names(data_enfermos2) == "PCR_REALIZADOS"] <- "pcr_realizados"
names(data_enfermos2)[names(data_enfermos2) == "PCR_POSITIVOS"] <- "pcr_positivos"
names(data_enfermos2)[names(data_enfermos2) == "PCR_POSITIVOS_SINTOMAS"] <- "pcr_positivos_sintomas"
