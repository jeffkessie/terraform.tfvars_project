# AWS Organizations Multi-Account Setup with Terraform

This Terraform project automates the creation of AWS accounts under an AWS Organization. It sets up a **Development (dev)** and **Production (prod)** account within their respective Organizational Units (OUs).

## Table of Contents
- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Usage](#usage)

## Overview
This project uses Terraform to create and manage AWS accounts under an AWS Organization. It demonstrates how to:
- Create AWS accounts programmatically.
- Organize accounts into OUs (Organizational Units).
- Use Terraform variables for flexibility.

## Prerequisites
Before using this project, ensure you have the following:
1. **AWS Account**: An AWS account with permissions to create organizations and accounts.
2. **Terraform Installed**: Install Terraform from [here](https://www.terraform.io/downloads.html).
3. **AWS CLI Configured**: Set up your AWS CLI with the necessary credentials.

## Usage
Utilizing Terraform for managing AWS Organizations is a powerful approach to ensuring secure, scalable, and well-governed multi-account environments. By codifying the creation and organization of AWS accounts, this project enforces consistency and reduces the risk of human error, which is critical for maintaining a secure and compliant infrastructure. Terraform's declarative syntax allows you to define clear policies for Organizational Units (OUs), service control policies (SCPs), and account configurations, ensuring that all accounts adhere to organizational standards from the moment they are created.

This project demonstrates how Terraform can automate the setup of Development (dev) and Production (prod) accounts within AWS Organizations, enabling teams to operate in isolated environments with appropriate guardrails. By leveraging Terraform's state management, you can track changes to your AWS Organization over time, providing an audit trail for compliance and governance purposes. Additionally, Terraform's integration with version control systems like Git ensures that all infrastructure changes are reviewed, approved, and documented, further enhancing security and accountability.

From a security perspective, this project ensures that accounts are created with least-privilege access and are organized into OUs with predefined SCPs, reducing the risk of unauthorized actions or misconfigurations. By automating the deployment of secure multi-account architectures, this Terraform project not only accelerates onboarding but also establishes a foundation for scalable, secure, and well-governed AWS environments.

## Let's Connect!

I'm always excited to connect with fellow IT enthusiasts, learn new things, and collaborate on interesting projects. You can find me on:


- 🔗 [LinkedIn](https://www.linkedin.com/in/jkessie/)

Feel free to reach out if you'd like to chat about coding, collaborate, or just say hi! 😊
