provider "google" {
  credentials = file(var.service_account_key_file)
  project     = var.project_id
  region      = "us-central1"  # Set your desired region
}

resource "google_bigquery_dataset" "my_dataset" {
  dataset_id = "my_dataset"
  project    = var.project_id

  labels = {
    environment = "production"
  }
}

resource "google_bigquery_table" "my_table" {
  dataset_id = google_bigquery_dataset.my_dataset.dataset_id
  table_id   = "my_table"

  schema {
    # Define your table schema here
    fields {
      name = "column_name"
      type = "STRING"
    }
    # Add more fields as needed
  }

  source {
    # Define the source GCS URI
    source_uris = ["gs://${var.bucket_name}/path/to/data/*.csv"]
  }
}
