# **Github Copilot: Exploring Copilot Individual, Business, and Enterprise Versions**

## **Overview of GitHub Copilot Editions**

| Edition        | Target Audience             | Key Features                                            | Pricing                                   |
| -------------- | --------------------------- | ------------------------------------------------------- | ----------------------------------------- |
| **Individual** | Freelancers / Solo Devs     | Code completion, Copilot Chat                           | \$10/user/month                           |
| **Business**   | Teams / Small Organizations | All Individual features + License Management, Policies  | \$19/user/month                           |
| **Enterprise** | Large Enterprises           | All Business features + SDLC Integration, Custom Models | \$39/user/month + GitHub Enterprise Cloud |

---

## **1. GitHub Copilot Individual**

### **Best For**:

* Solo developers, freelancers, open-source contributors.

### **Features**:

* Code completion in your IDE (VS Code, JetBrains, etc.).
* Copilot Chat for code-related queries and generation.
* Works on local source code inside the IDE.

### **Pricing**:

* **\$10 per user/month**

### **Example Use Case**:

* A freelancer building a Django web app can use Copilot to auto-complete views, models, and generate unit tests via chat.

---

## **2. GitHub Copilot Business**

### **Best For**:

* Teams and businesses managing multiple developers.

### **Additional Features Over Individual**:

* Centralized **license management** via GitHub Org.
* **Consumption-based license assignment** (re-assign monthly).
* **Enterprise policy controls**:

  * Exclude public code suggestions.
  * Proxy support.
  * Code referencing filters.

### **Pricing**:

* **\$19 per user/month**

### **Note**:

* Licenses are not locked to a GitHub ID—can rotate developers monthly.

### **Example Use Case**:

* A team of 100 developers starting a project in Jan may scale down to 10 in March based on the phase (e.g., moving to design). Copilot Business allows flexible scaling.

---

## **3. GitHub Copilot Enterprise**

### **Best For**:

* Enterprises needing SDLC-wide AI support.

### **All Business Features**, plus:

* Integrated across the **entire SDLC**, not just IDE.
* **Platform-wide Copilot Chat** on GitHub.com:

  * PR discussions, repo insights, API documentation access.
* **Documentation Search**:

  * Access internal API docs, org standards, or repo summaries.
* **Pull Request (PR) Summarization**:

  * Auto-summarize PR changes (commits, file changes).
* **Auto Code Review**:

  * Enforce org coding standards automatically.
* **Custom Fine-Tuned Models**:

  * Tailor suggestions based on your company’s own codebase.

### **Pricing**:

* **\$39 per user/month**
* Requires **GitHub Enterprise Cloud**

### **Example Use Case**:

* A medical tech firm with proprietary C++ frameworks can fine-tune Copilot to improve suggestions based on its historical repo data, and integrate AI feedback into PRs and internal documentation tools.

---

## **Side-by-Side Comparison Chart**

| Feature                         | Individual (\$10) | Business (\$19) | Enterprise (\$39 + GitHub Enterprise Cloud) |
| ------------------------------- | ----------------- | --------------- | ------------------------------------------- |
| Code Completion                 | ✅                 | ✅               | ✅                                           |
| Copilot Chat in IDE             | ✅                 | ✅               | ✅                                           |
| License Management              | ❌                 | ✅               | ✅                                           |
| Consumption-Based Licensing     | ❌                 | ✅               | ✅                                           |
| Proxy Support                   | ❌                 | ✅               | ✅                                           |
| Public Code Filtering           | ❌                 | ✅               | ✅                                           |
| Platform-Wide Chat (GitHub.com) | ❌                 | ❌               | ✅                                           |
| Internal Docs/PR Summarization  | ❌                 | ❌               | ✅                                           |
| Auto Code Review                | ❌                 | ❌               | ✅                                           |
| Fine-Tuned AI on Codebase       | ❌                 | ❌               | ✅                                           |
| Works on Any Codebase (IDE)     | ✅                 | ✅               | ✅                                           |
| GitHub Enterprise Cloud Needed  | ❌                 | ❌               | ✅                                           |

---

## **Getting Started (Step-by-Step)**

### **For Individual Users:**

1. Go to: [https://github.com/features/copilot](https://github.com/features/copilot)
2. Sign in with your GitHub account.
3. Choose **Copilot for Individuals** and start 30-day free trial or purchase.
4. Install GitHub Copilot extension in your IDE (e.g., VS Code).
5. Start coding!

### **For Business:**

1. GitHub Org admin goes to **Billing Settings**.
2. Subscribe to **Copilot Business**.
3. Assign licenses to developers as needed.
4. Configure org-level policies (e.g., public code exclusion).
5. Developers install the extension and sign in with their org account.

### **For Enterprise:**

1. Contact GitHub Sales for **Enterprise Cloud setup**.
2. Configure SDLC-wide integration (PRs, Docs, GitHub Platform).
3. Set up **fine-tuned models** if desired.
4. Roll out policies, documentation search, and collaborative AI chat.
