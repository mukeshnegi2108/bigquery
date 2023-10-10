resource "google_kms_key_ring" "my_key_ring" {
  name     = "my-key-ring"
  location = "global"
  project  = var.project_id
}

resource "google_kms_crypto_key" "my_crypto_key" {
  name       = "my-crypto-key"
  key_ring   = google_kms_key_ring.my_key_ring.self_link
  purpose    = "ENCRYPT_DECRYPT"
  project    = var.project_id
}
