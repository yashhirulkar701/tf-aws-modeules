# Terraform Modules

This repository contains a collection of Terraform modules for managing compute resources in our infrastructure. Each module is designed to be reusable and customizable, allowing you to easily configure and provision resources in the environment.

## Modules Overview

### 1. Network Load Balancer (NLB) Module

- **Module Path:** `modules/nlb`

- **Description:** This module allows you to create and configure an AWS Network Load Balancer (NLB) with customizable settings.

### 2. Auto Scaling Groups Module

- **Module Path:** `modules/autoscaling_groups`

- **Description:** This module provides configurations for creating AWS Auto Scaling Groups with flexibility in defining scaling policies and launch configurations.

### 3. Instance Module

- **Module Path:** `modules/instance`

- **Description:** The instance module offers configurations for provisioning individual EC2 instances, allowing you to specify instance type, AMI, and other settings.

### 4. Network Load Balancer (NLB) Listener Module

- **Module Path:** `modules/nlb_listener`

- **Description:** This module simplifies the setup of listeners for your AWS Network Load Balancer, including port configurations and target groups.

### 5. Target Group Attachment Module

- **Module Path:** `modules/target_group_attachment`

- **Description:** This module helps you attach EC2 instances or other resources to an AWS Elastic Load Balancer (ELB) target group.

## Usage

You can use these modules by referencing their respective paths in your Terraform configuration. You can refer to the respective module's directory for usage.

To use a module, include it in your Terraform configuration, set the required variables, and invoke it as a resource.