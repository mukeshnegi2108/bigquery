module "gcs_bucket" {
  source = "./modules/gcs_bucket"

  bucket_name = "your-gcs-bucket-name"
  project     = "your-gcp-project-id"
}

module "service_account" {
  source    = "./modules/service_account"
  project_id = "your-gcp-project-id"
}

module "bigquery" {
  source                  = "./modules/bigquery"
  project_id              = "your-gcp-project-id"
  bucket_name             = "your-gcs-bucket-name"
  service_account_email   = module.service_account.service_account_email
  service_account_key_file = "path/to/your/service_account/key.json"
}
