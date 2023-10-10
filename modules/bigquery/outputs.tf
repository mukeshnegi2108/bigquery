output "bigquery_dataset_id" {
  description = "The ID of the BigQuery dataset."
  value       = google_bigquery_dataset.my_dataset.dataset_id
}

output "bigquery_table_id" {
  description = "The ID of the BigQuery table."
  value       = google_bigquery_table.my_table.table_id
}

output "bigquery_project_id" {
  description = "The ID of the GCP project where BigQuery resources are created."
  value       = google_bigquery_dataset.my_dataset.project
}

output "bigquery_location" {
  description = "The region where BigQuery resources are located."
  value       = google_bigquery_dataset.my_dataset.location
}
