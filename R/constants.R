get_env_var <- function(env_var_name, default_value) {
  if (Sys.getenv(env_var_name) == "") {
    return(default_value)
  } else {
    return(Sys.getenv(env_var_name))
  }
}

user_data_dir <- get_env_var("DATA_DIR", "")
user_results_dir <- get_env_var("RESULTS_DIR", "")

number_of_cpus_available <- as.numeric(get_env_var("SLURM_CPUS_ON_NODE", 1))
genomic_data_dir <- get_env_var("GENOMIC_DATA_DIR", "/mnt/storage/private/mrcieu/data/genomic_data/")
qtl_directory <- get_env_var("QTL_DIRECTORY", "/mnt/storage/private/mrcieu/data/qtl_datasets/")
liftover_dir <- get_env_var("LIFTOVER_DIR", "/mnt/storage/private/mrcieu/data/genomic_data/liftover/")

pqtl_top_hits_dir <- paste0(qtl_directory, "/pqtl")
metabrain_top_hits_dir <- paste0(qtl_directory, "/metabrain/top_hits")
metabrain_gwas_dir <- paste0(qtl_directory, "/metabrain/gwas")
eqtlgen_top_hits_dir <- paste0(qtl_directory, "/eqtlgen/top_hits")
eqtlgen_gwas_dir <- paste0(qtl_directory, "/eqtlgen/gwas")

qtl_datasets <- list(metabrain="metabrain", eqtlgen="eqtlgen")
populate_rsid_options <- list(full="full", partial="partial", none="none")
