variable "base_bucket_name" {
  description = "The base name for the Google Cloud Storage bucket. A random suffix will be appended."
  type        = string
  default     = "web-logs-storage"
}

variable "PROJECT_ID" {
  description = "The GCP project ID to deploy resources into."
  type        = string
}