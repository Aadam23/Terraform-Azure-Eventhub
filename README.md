# Azure Event Hub Deployment with Terraform

This project automates the deployment of an **event-driven messaging system** using **Azure Event Hub** via **Terraform**. It provisions a complete infrastructure stack that can be used to simulate or support real-time data ingestion pipelines, messaging systems, and streaming analytics architectures.

---

## What This Project Does

- Creates an Azure **Resource Group**
- Deploys an **Event Hub Namespace** with a unique name
- Deploys a **Basic Event Hub** with 2 partitions
- Outputs key values such as the Event Hub name, namespace, and a secure connection string
- Includes a **specification + test plan** document for real-world infrastructure delivery

---

## Technologies Used

- [Terraform](https://www.terraform.io/)
- [Microsoft Azure](https://azure.microsoft.com/)
- Azure CLI
- Visual Studio Code

---

## Outputs

After running `terraform apply`, the following values are returned:

| Output Name                       | Description                             |
|----------------------------------|-----------------------------------------|
| `resource_group_name`            | Name of the created resource group      |
| `eventhub_namespace_name`        | Name of the Event Hub namespace         |
| `eventhub_name`                  | Name of the Event Hub                   |
| `eventhub_primary_connection_string` | Primary connection string (sensitive) |

---

## Testing and Validation

All requirements and test steps are documented in [`eventhub_spec.md`](./eventhub_spec.md), including:

- Output validation
- Resource verification in the Azure Portal
- Connection string protection
- Cleanup steps

---

## How to Use

1. Clone the repo  
2. Replace the placeholder `subscription_id` in `main.tf` with your actual Azure subscription ID  
3. Run:

```bash
terraform init
terraform apply
