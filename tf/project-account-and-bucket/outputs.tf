output "project_number" {
  value = data.google_project.project.number
}

output "gcp_credentials_json" {
  value = base64decode(google_service_account_key.ci_bot_key.private_key)
}

output "zone_name" {
  value = google_dns_managed_zone.tas-srt.name
}

output "zone_address" {
  value = trimsuffix(google_dns_managed_zone.tas-srt.dns_name, ".")
}
