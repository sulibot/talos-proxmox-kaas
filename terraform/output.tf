output "talosconfig" {
  value     = data.talos_client_configuration.cc.talos_config
  sensitive = true
}

output "cp" {
  value     = data.talos_machine_configuration.mc_1.machine_configuration
  sensitive = true
}

output "worker" {
  value     = data.talos_machine_configuration.worker_1.machine_configuration
  sensitive = true
}

output "auth-blob" {
  # Access the auth secrets
  value = data.sops_file.auth-secrets.data
  sensitive = true
}