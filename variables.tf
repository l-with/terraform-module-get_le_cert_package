variable "le_domains" {
  description = "the string of domains for the Let's Encrypt certificate package"
  type        = string
}

variable "url_header" {
  description = "the header for the url of the Let's Encrypt certificate package"
  type        = string
  sensitive   = true
}

variable "le_certificate_package_url" {
  description = "the url of the Let's Encrypt certificate package"
  type        = string
}

variable "le_certificate_package_secret" {
  description = "the secret to decrypt the Let's Encrypt certificate package"
  type        = string
  sensitive   = true
}

variable "command_to_execute_when_finished" {
  description = "the command to be executed when finished (e.g. restart web server)"
  type        = string
  default     = ""
}
