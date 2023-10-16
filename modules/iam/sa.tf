resource "google_service_account" "my_service_account" {
  account_id   = "my-service-account"
  display_name = "My Service Account"
  project      = var.project_id
}

# resource "google_project_iam_policy" "service_account_policy" {
#   project = var.project_id

#   bindings = [
#     {
#       role    = "roles/storage.objectViewer"  # Grant the necessary role (e.g., read-only access to GCS)
#       members = ["serviceAccount:${google_service_account.my_service_account.email}"]
#     },
#     # Add more roles and members as needed
#   ]
# }
