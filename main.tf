variable "token" {}

data "terraform_remote_state" "null_pet_name" {
  backend = "atlas"

  config {
    name         = "HiveCorp/random_pet"
    access_token = "${var.token}"
  }
}

resource "null_resource" "test1" {
  provisioner "local-exec" {
    command = "echo ${data.terraform_remote_state.null_pet_name.random_pet_id}"
  }
}
