variable "le_domains" {
  description = "the string of domains for the certificate package"
  type        = string
}

variable "url_header" {
  description = "the header for the url of the Let's Encrypt certificate package"
  type        = string
  sensitive   = true
}

variable "lets_encrypt_certificate_package_url" {
  description = "the url of the Let's Encrypt certificate package"
  type        = string
}

variable "lets_encrypt_certificate_package_secret" {
  description = "the secret to decrypt the certificate package"
  type        = string
}

variable "command_to_execute_when_finished" {
  description = "the command to be executed when finished (e.g. restart web server)"
  type        = string
  default     = ""
}
