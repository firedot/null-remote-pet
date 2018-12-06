# null-remote-pet
Terraform null resource, that uses remotely produced random_pet name

# PREREQUISITES

- Terraform installed. You could get it [here](https://www.terraform.io/downloads.html)
- Terraform Enterprise account. Find out more [here](https://www.hashicorp.com/products/terraform)
- You need to fork the following repository to your GitHub account:
  - [Terraform random_pet resource](https://github.com/firedot/random-pet)
- Make a quick pass trough the TFE [getting started guide](https://www.terraform.io/docs/enterprise/getting-started/index.html) and:
    - Configure VCS Access
    - Create a workspace and as a source use the forked repo
    - Queue a plan and apply it


# TO-DO 

# DONE

- Create a terraform configuration file that does the following: 
  - Consume remote random_pet state (consume the name of the pet)
- Link to the repo, that produces the random_pet name: 
  - [Link](https://github.com/firedot/random-pet)

# HOW TO USE THIS REPOSITORY


- Clone the repository

```
git clone https://github.com/firedot/null-remote-pet.git
```

- Go to the cloned repo directory 

```
cd null-remote-pet
```

- Export an environment variable, which will hold your TFE access token


```
export TF_VAR_access_token='<your_TFE_access_token_here>'
```

- Run the following command to see what the eventual outcome from applying your configuration will be

```
terraform plan
```

- To provision your infrastructure configuration run the following command

```
terraform apply
```

- If everything has gone successfully, you should see a screen as the one below


![Successful apply](screenshots/successful_apply.png?raw=true "Screen after successful apply.")


- To destroy the infrastructure you provisioned just run the line below

```
terraform destroy
```
