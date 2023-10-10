output "service_account_email" {
  value = google_service_account.my_service_account.email
}

output "service_account_key" {
  value = google_service_account.my_service_account.key_name
}
