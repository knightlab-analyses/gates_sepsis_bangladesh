library(FEAST)

## Early
metadata <- Load_metadata(metadata_path = "~/Desktop/UCSD/KnightLab/Sepsis_Gates/data/Microbiome/FEAST_source-tracker/feast_metadata_diffsources_early.tsv")
ogus <- Load_CountMatrix(CountMatrix_path = "~/Desktop/UCSD/KnightLab/Sepsis_Gates/data/Microbiome/combined_ftable_cov25_prev1/feature-table_Rformat.tsv")

FEAST_output_ds <- FEAST(C = ogus, metadata = metadata, 
                         different_sources_flag = 1, 
                         dir_path = "~/Desktop/UCSD/KnightLab/Sepsis_Gates/data/Microbiome/FEAST_source-tracker/",
                         outfile="all_sites_different_sources_early_unrar_matrix")


## Late
metadata <- Load_metadata(metadata_path = "~/Desktop/UCSD/KnightLab/Sepsis_Gates/data/Microbiome/FEAST_source-tracker/feast_metadata_diffsources_late.tsv")
ogus <- Load_CountMatrix(CountMatrix_path = "~/Desktop/UCSD/KnightLab/Sepsis_Gates/data/Microbiome/combined_ftable_cov25_prev1/feature-table_Rformat.tsv")

FEAST_output_ds <- FEAST(C = ogus, metadata = metadata, 
                         different_sources_flag = 1, 
                         dir_path = "~/Desktop/UCSD/KnightLab/Sepsis_Gates/data/Microbiome/FEAST_source-tracker/",
                         outfile="all_sites_different_sources_late_unrar_matrix")