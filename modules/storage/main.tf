resource "google_storage_bucket" "my_bucket" {
  name          = var.bucket_name
  project       = var.project
  location      = "US"  # Set the desired location for your bucket

  # Configure encryption settings
  encryption {
    default_kms_key_name = module.kms_key.google_kms_crypto_key.my_crypto_key.self_link
  }

  # You can add additional configuration options for your bucket here
}

resource "google_storage_bucket_acl" "bigquery_acl" {
  bucket = google_storage_bucket.my_bucket.name

  # role_entity {
  #   entity    = "projectViewer"  # Assign the appropriate role for BigQuery access
  #   entity_id = var.project
  # }
}
