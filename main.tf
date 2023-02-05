data "system_command" "curl_le_cert_package" {
  command = "curl --output /tmp/le_${var.le_domains}.zip --header ${var.url_header} ${var.le_cert_package_url}"
  expect {
    stderr = true
    stdout = true
  }
}

data "system_command" "decrypt_and_untar_le_cert_package" {
  depends_on = [data.system_command.curl_le_cert_package]
  command    = "LE_CERT_PACKAGE_SECRET=${var.le_cert_package_secret} openssl enc -aes-256-cbc -pbkdf2 -d -pass env:LE_CERT_PACKAGE_SECRET -in /tmp/le_${var.le_domains}.zip | tar xzC /"
  expect {
    stderr    = true
    stdout    = true
    exit_code = 2
  }
}

data "system_command" "when_finished" {
  depends_on = [data.system_command.decrypt_and_untar_le_cert_package]
  count      = var.command_to_execute_when_finished != "" ? 1 : 0
  command    = var.command_to_execute_when_finished
}
