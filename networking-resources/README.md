# Terraform Modules Documentation

This repository contains a collection of Terraform modules designed to simplify the provisioning and management of various AWS resources for networking. These modules can be used individually or combined to create a AWS infrastructure.

## Modules Overview

### 1. VPC Module

- **Module Path:** `modules/vpc`

- **Description:** This module creates an Amazon Virtual Private Cloud (VPC) with customizable settings such as CIDR block, and DNS resolution.

### 2. Public Subnet Module

- **Module Path:** `modules/public_subnet`

- **Description:** This module provisions public subnets and subnet route table association within a VPC.

### 3. Private Subnet Module

- **Module Path:** `modules/private_subnet`

- **Description:** This module deploys private subnets within a VPC.

### 4. Security Groups Module

- **Module Path:** `modules/security_group`

- **Description:** This module manages AWS security groups, allowing you to define inbound and outbound rules for your resources.

### 5. VPC Peering Module

- **Module Path:** `modules/vpc_peering`

- **Description:** This module establishes VPC peering connections between multiple VPCs, enabling private network communication.


### 6. NAT Gateways Module

- **Module Path:** `modules/nat_gateway`

- **Description:** This module automates the creation of AWS NAT gateways, Eip.

### 7. NAT Gateway route Module

- **Module Path:** `modules/nat_gateway_routes`

- **Description:** This module automates the creation of private route tables and subnet route table association which provide outbound internet access to resources in private subnets.

### 8. Internet Gateways Module

- **Module Path:** `modules/internet_gateway`

- **Description:** This module simplifies the setup of an AWS Internet Gateway, route table for public subnet allowing resources in public subnets to connect to the internet.

### 9. vpc peer route table Module

- **Module Path:** `modules/vpc_peer_route_table`

- **Description:** This module adds the needed route in the peer vpc id for the private connection. 

## Usage

Each module directory contains detailed examples and documentation specific to that module. You can refer to the respective module's directory for usage instructions, input variables, and output values.

To use a module, include it in your Terraform configuration, set the required variables, and invoke it as a resource.
