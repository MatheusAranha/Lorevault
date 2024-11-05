# Habilita as APIs do Firebase e Firestore
resource "google_project_service" "firebase_api" {
  provider = google
  project = var.project_id
  service = "firebase.googleapis.com"
}

resource "google_project_service" "firestore_api" {
  provider = google
  project = var.project_id
  service = "firestore.googleapis.com"
}

# Ativa o Firebase no projeto Google Cloud
resource "google_firebase_project" "firebase" {
  provider = google-beta
  project = var.project_id
}

# Configura o Firestore como banco de dados nativo
resource "google_firestore_database" "firestore" {
  provider = google
  name   = "(default)"
  project = var.project_id
  location_id = var.region
  type = "FIRESTORE_NATIVE"  # Firestore em modo nativo
}
