# **Deploying GitHub Copilot Dashboard with Actions, Repo, and Pages**

## **Introduction**

This guide will walk you through deploying a GitHub Copilot Dashboard using GitHub Actions, a GitHub Repository, and GitHub Pages. By following these steps, you can automate the collection of Copilot usage data and visualize it using a dashboard hosted directly on GitHub Pages.

---

## **Prerequisites**

* A GitHub account with access to a GitHub Organization.
* GitHub Copilot API access.
* Basic knowledge of GitHub Actions and GitHub Pages.

---

## **Step 1: Setting Up the Repository**

1. Go to GitHub and create a **New Repository**.

   * Name: **GitHub-Copilot-Dashboard**.
   * Description: **A dashboard for monitoring GitHub Copilot usage and seat data.**
   * Visibility: **Public or Private** based on your preference.

2. Initialize the repository with a **README file**.

---

## **Step 2: Configuring GitHub Secrets and Variables**

1. Go to **Settings > Secrets and Variables > Actions**.

2. Click **'New Repository Secret'**.

   * Name: **GITHUB\_TOKEN**.
   * Value: **Your GitHub API Token with appropriate permissions.**

3. Add a Repository Variable:

   * Name: **ORG\_NAME**.
   * Value: **Your GitHub Organization Name** (e.g., `octo-demo`).

---

## **Step 3: Setting Up GitHub Actions**

1. Go to the **Actions** tab of your repository.
2. Click **'New Workflow'** and create a new workflow with the following configuration:

```yaml
name: GitHub Copilot Dashboard Workflow

on:
  schedule:
    - cron: '0 0 * * 1'  # Runs every Monday at midnight
  workflow_dispatch:

jobs:
  collect-metrics:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Repository
        uses: actions/checkout@v3

      - name: Collect Copilot Metrics
        run: |
          curl -H "Authorization: Bearer ${{ secrets.GITHUB_TOKEN }}" \
          "https://api.github.com/orgs/${{ vars.ORG_NAME }}/copilot/metrics" -o metrics.json

      - name: Commit and Push Metrics
        run: |
          git config --global user.name "github-actions"
          git config --global user.email "github-actions@github.com"
          git add metrics.json
          git commit -m "Update Copilot Metrics"
          git push
```

---

## **Step 4: Configuring GitHub Pages**

1. Go to **Settings > Pages**.
2. Set the Source to **Deploy from a branch**.
3. Choose **`main` branch / `root` folder**.
4. Save the settings.

---

## **Step 5: Building the Dashboard UI**

1. Create an **`index.html`** file in the root of the repository.
2. Add basic HTML and JavaScript to load the metrics.json file and display the dashboard.

```html
<!DOCTYPE html>
<html>
<head>
  <title>GitHub Copilot Dashboard</title>
</head>
<body>
  <h1>GitHub Copilot Dashboard</h1>
  <div id="dashboard"></div>

  <script>
    fetch('metrics.json')
      .then(response => response.json())
      .then(data => {
        document.getElementById('dashboard').innerText = JSON.stringify(data, null, 2);
      });
  </script>
</body>
</html>
```

---

## **Step 6: Testing and Deploying**

1. Trigger the workflow manually from the Actions tab.
2. Once the workflow completes, visit your GitHub Pages URL to see the dashboard.
3. Example URL: `https://your-username.github.io/GitHub-Copilot-Dashboard/`

---

## **Conclusion**

You have successfully set up a GitHub Copilot Dashboard using GitHub Actions, Repository, and Pages. You can further enhance this dashboard with advanced UI features, filters, and visualizations.
