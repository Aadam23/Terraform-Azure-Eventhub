# Azure Event Hub Terraform Module - Specification & Test Plan

## Service Overview
This module provisions an **Azure Event Hub** within a new **Event Hub Namespace** and Resource Group using Terraform. It is designed to support event-driven architecture and integrates with other services such as Azure Data Lake or Azure Monitor.

---

## Requirements

| Requirement                            | Description |
|----------------------------------------|-------------|
| Resource Group                         | Deployed to `East US` region |
| Event Hub Namespace                    | Unique name via random suffix |
| Event Hub                              | Basic SKU, 2 partitions |
| Output Values                          | Resource group name, event hub name, namespace name, primary connection string (sensitive) |

---

## Terraform Module Inputs (from variables.tf)
_N/A — variables not yet abstracted, but planned for future module refactoring._

---

## Outputs

| Output                          | Description                         |
|----------------------------------|-------------------------------------|
| `resource_group_name`           | Name of the deployed resource group |
| `eventhub_namespace_name`       | Name of the Event Hub namespace     |
| `eventhub_name`                 | Name of the Event Hub               |
| `eventhub_primary_connection_string` | Secure connection string for publishing events |

---

## Test Plan

1. ✅ Run `terraform apply` to provision infrastructure
2. ✅ Validate resources in Azure Portal
3. ✅ Run `terraform output` to confirm outputs return expected values
4. ✅ Confirm `eventhub_primary_connection_string` is marked sensitive
5. ✅ Run `terraform destroy` to clean up

---

## Future Improvements
- Extract variables to `variables.tf` for better reuse
- Add optional diagnostic settings to route logs to Azure Monitor or Log Analytics
- Wrap in module structure for use in multiple environments (dev/test/prod)
