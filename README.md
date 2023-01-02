# Terraform Exercise

Here is the flow for the terraform part:

![alt text](https://github.com/pavlovnicola/terraform_exercise/blob/master/terraform-arch.png?raw=true)

### Description

Create Terraform code that provisions the following:

- VPC with 2 public subnets (2 subnets at least needed for creating NLB)
- EC2 (linux-based) with fixed IP
- NLB that spans over two subnets

### Environment:

This assignment was tested against the following environment (internal network behind firewall):

- CentOS Linux 7 VM
- 16 GBs Ram
- 4 CPU Cores
- 100 GB Disk
- Terraform v1.3.6

The terraform code was tested against AWS region: eu-central-1

### Prerequisites:

- AWS account
- IAM User with auhtorized to create VPC, EC2 AWS Resources
- AWS Access Key        (Set an env variable or in ~/.aws/credentials)
- AWS Secret Access Key (Set an env variable or in ~/.aws/credentials)

### How to run the terraform code

After fulfilling the pre-requisites, run the following:

```ruby
terraform init
```

The init command initializes a Terraform working directoty.

> You need to run the init command when you clone the repo or add a new module.

```ruby
terraform validate
```

In order to verify and validate the configuration, you can run the validate command.

```ruby
terraform plan
```

Run the plan command to create an execution plan. This will let you preview the changes that Terraform will make to the infrastructure.

```ruby
terraform apply
```

The apply command will actually execute the Terraform plan. In other words, this command will create the resources shown in the diagram above: VPC, EC2 and NLB.
