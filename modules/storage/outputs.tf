output "gcs_bucket_name" {
  description = "The name of the GCS bucket."
  value       = google_storage_bucket.my_bucket.name
}

output "gcs_bucket_project" {
  description = "The project of the GCS bucket."
  value       = google_storage_bucket.my_bucket.project
}

output "gcs_bucket_location" {
  description = "The location of the GCS bucket."
  value       = google_storage_bucket.my_bucket.location
}
