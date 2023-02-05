# terraform-module-ningx

Terraform module which gets and installs encrypted Let's Encrypt certificate package from url.

This role can be used to get a prepared package of a Let's Encrypt Cerificate (for instance by DNS challenge).

This is a terraform replacement for [Ansible Role Get Let's Encrypt Certificate Package](https://github.com/l-with/ansible-role-get_lets_encrypt_certificate_package).

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.15 |
| <a name="requirement_system"></a> [system](#requirement\_system) | >= 0.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_system"></a> [system](#provider\_system) | >= 0.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [system_command.curl_lets_encrypt_certificate_package](https://registry.terraform.io/providers/neuspaces/system/latest/docs/data-sources/command) | data source |
| [system_command.decrypt_and_untar_lets_encrypt_certificate_package](https://registry.terraform.io/providers/neuspaces/system/latest/docs/data-sources/command) | data source |
| [system_command.when_finished](https://registry.terraform.io/providers/neuspaces/system/latest/docs/data-sources/command) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_command_to_execute_when_finished"></a> [command\_to\_execute\_when\_finished](#input\_command\_to\_execute\_when\_finished) | the command to be executed when finished (e.g. restart web server) | `string` | `""` | no |
| <a name="input_le_domains"></a> [le\_domains](#input\_le\_domains) | the string of domains for the certificate package | `string` | n/a | yes |
| <a name="input_lets_encrypt_certificate_package_secret"></a> [lets\_encrypt\_certificate\_package\_secret](#input\_lets\_encrypt\_certificate\_package\_secret) | the secret to decrypt the certificate package | `string` | n/a | yes |
| <a name="input_lets_encrypt_certificate_package_url"></a> [lets\_encrypt\_certificate\_package\_url](#input\_lets\_encrypt\_certificate\_package\_url) | the url of the Let's Encrypt certificate package | `string` | n/a | yes |
| <a name="input_url_header"></a> [url\_header](#input\_url\_header) | the header for the url of the Let's Encrypt certificate package | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
