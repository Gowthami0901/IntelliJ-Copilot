# **Explore GitHub Copilot User Management API using Actions**


## **Overview**

GitHub Copilot’s User Management API allows organizations to:

* List assigned Copilot seats
* Add or remove users
* Manage seat assignments programmatically

The APIs are in **public beta**, and best used for optimizing **seat usage and cost**.

---

## **APIs Discussed**

1. **List Copilot seat assignments**
2. **Remove a user from Copilot subscription**

Other useful endpoints (not covered in detail) include:

* Add user to Copilot
* Team-based assignments

---

## **Using GitHub Actions for Automation**

GitHub Actions help automate:

* **Usage reports** (manual or scheduled)
* **Seat cleanup** for inactive users

---

## **Copilot Usage Report Action**

### **What It Does:**

Generates a CSV report of:

* Seat assignment details
* Last used date
* Editor used (VS Code, IntelliJ, etc.)
* Team affiliation (if applicable)
* Pending cancellation dates

### **Setup Steps:**

1. Create a **PAT (Personal Access Token)** with:

   * Scope: `read:org`
   * Access: Organization-level, not personal
   * Permission: Read-only for usage reports

2. Sample `workflow.yaml`:

```yaml
name: Copilot Usage Report
on:
  workflow_dispatch:  # or use 'schedule' for CRON jobs

jobs:
  report:
    runs-on: ubuntu-latest
    steps:
      - name: Generate Copilot Usage Report
        uses: actions/copilot-usage-report@v1
        with:
          token: ${{ secrets.COPILOT_TOKEN }}
          organization: your-org-name
          csv_path: copilot_usage_report.csv

      - name: Upload Usage Report
        uses: actions/upload-artifact@v3
        with:
          name: copilot-usage-report
          path: copilot_usage_report.csv
```

---

## **Copilot User Management Action**

### **What It Does:**

Identifies and (optionally) **removes inactive users**:

* Never used their seat (blank `last_activity`)
* Or haven’t used it in X days (default: 25)

### **Setup Steps:**

1. **Create PAT** with:

   * Read/Write permissions to Copilot for Business
   * Same organization-level scope

2. Important Inputs:

   * `organization`: Org name
   * `csv_path`: Path to save report
   * `inactive_only`: Remove only users who never used Copilot
   * `inactive_days`: Users inactive for more than N days
   * `is_delete`: Actually remove users (default is `false`)

### **Sample Workflow:**

```yaml
name: Copilot User Management
on:
  workflow_dispatch:
    inputs:
      organization:
        default: your-org-name
        required: true
      csv_path:
        default: copilot_removal_report.csv
        required: true
      is_delete:
        default: false
        required: false
      inactive_only:
        default: true
        required: false
      inactive_days:
        default: 30
        required: false

jobs:
  manage_users:
    runs-on: ubuntu-latest
    steps:
      - name: Run Copilot User Management
        uses: actions/copilot-user-management@v1
        with:
          token: ${{ secrets.COPILOT_TOKEN }}
          organization: ${{ github.event.inputs.organization }}
          csv_path: ${{ github.event.inputs.csv_path }}
          is_delete: ${{ github.event.inputs.is_delete }}
          inactive_only: ${{ github.event.inputs.inactive_only }}
          inactive_days: ${{ github.event.inputs.inactive_days }}

      - name: Upload Report
        uses: actions/upload-artifact@v3
        with:
          name: copilot-inactive-users
          path: ${{ github.event.inputs.csv_path }}
```

---

## **Notes:**

* **Scheduled Runs**: Use `schedule` and `cron` for automated seat cleanup.
* **Manual Execution**: Use `workflow_dispatch` for on-demand reports.
* **Safe Strategy**: Start with `inactive_only: true`, `is_delete: false` for a dry-run.

---

## **Why This Matters**

* Helps **optimize Copilot licensing costs**
* Identifies **inactive users**
* Automates **seat reassignment or removal**

