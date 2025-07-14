library(FEAST)

#EARLY

metadata <- Load_metadata(metadata_path = "/home/callaban/Projects/Sepsis_Gates/FEAST/feast_metadata_samesources_early.tsv")
ogus <- Load_CountMatrix(CountMatrix_path = "/home/callaban/Projects/Sepsis_Gates/FEAST/combined_ftable_cov25_prev1/feature-table_Rformat.tsv")

FEAST_output_ss <- FEAST(C = ogus, metadata = metadata, 
                         different_sources_flag = 0, 
                         dir_path = "/home/callaban/Projects/Sepsis_Gates/FEAST/",
                         outfile="feces_same_sources_early_unrar_matrix")

#LATE

metadata <- Load_metadata(metadata_path = "/home/callaban/Projects/Sepsis_Gates/FEAST/feast_metadata_samesources_late.tsv")
ogus <- Load_CountMatrix(CountMatrix_path = "/home/callaban/Projects/Sepsis_Gates/FEAST/combined_ftable_cov25_prev1/feature-table_Rformat.tsv")

FEAST_output_ss <- FEAST(C = ogus, metadata = metadata, 
                         different_sources_flag = 0, 
                         dir_path = "/home/callaban/Projects/Sepsis_Gates/FEAST/",
                         outfile="feces_same_sources_late_unrar_matrix")