generate_file "modules.tf.json" {
  content = tm_file("${terramate.stack.path.to_root}/base/modules.tf.json")
}

generate_file "outputs.tf" {
  content = tm_file("${terramate.stack.path.to_root}/base/outputs.tf")
}

generate_file "provider.tf" {
  content = tm_file("${terramate.stack.path.to_root}/base/provider.tf")
}

generate_file "terraform.tfvars.json" {
  content = tm_file("${terramate.stack.path.to_root}/base/terraform.tfvars.json")
}

generate_file "variables.tf" {
  content = tm_file("${terramate.stack.path.to_root}/base/variables.tf")
}

generate_file "variables.tf.json" {
  content = tm_file("${terramate.stack.path.to_root}/base/variables.tf.json")
}