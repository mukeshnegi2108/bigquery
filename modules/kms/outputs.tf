output "kms_key_ring_name" {
  description = "The name of the KMS key ring."
  value       = google_kms_key_ring.my_key_ring.name
}

output "kms_crypto_key_name" {
  description = "The name of the KMS crypto key."
  value       = google_kms_crypto_key.my_crypto_key.name
}

output "kms_key_ring_location" {
  description = "The location of the KMS key ring."
  value       = google_kms_key_ring.my_key_ring.location
}

output "kms_key_ring_project" {
  description = "The project of the KMS key ring."
  value       = google_kms_key_ring.my_key_ring.project
}
