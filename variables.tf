variable "base_bucket_name" {
  description = "The base name for the Google Cloud Storage bucket. A random suffix will be appended."
  type        = string
  default     = "web-storage"
}
variable "GOOGLE_CREDENTIALS" {
  description = "GCP service account key in JSON format"
  type        = string
  default     = "xyz"
  sensitive   = true
}