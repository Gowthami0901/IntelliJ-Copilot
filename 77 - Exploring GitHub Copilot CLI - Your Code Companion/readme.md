# **Exploring GitHub Copilot CLI - Your Code Companion**

## **What is GitHub Copilot CLI?**

GitHub Copilot CLI helps you generate shell commands, cloud CLI commands, Git commands, and more using natural language. It supports:

* Suggesting commands
* Explaining existing commands
* Revising them interactively
* Configuring usage preferences

---

## **Step 1: Installation & Setup**
* GitHub Copilot for Business subscription
* Access to the GitHub CLI (`gh` command)

**Install GitHub Copilot CLI:**

```bash
gh extension install github/gh-copilot
```

**Authenticate:**

```bash
gh auth login
gh copilot auth login
```

---

## **Step 2: Explore Copilot CLI Features**

**General Syntax:**

```bash
gh copilot [command]
```

---

## **gh copilot suggest**

Use natural language to get command suggestions.

### **Example 1: Search files with specific string in name**
```bash
gh copilot suggest
```

**Prompt:**

```
list files with a specific string in the name
```

**Copilot Suggestion:**

```bash
find . -name "*string*"
```

You can:

* Copy to clipboard
* Ask to explain
* Revise

---

### **Example 2: List files containing a word in current directory and subfolders**

**Prompt:**

```
list files containing the word 'token' in current directory and all subfolders
```

**Copilot Suggestion:**

```bash
grep -rl "token" .
```

**Revise Prompt:**

```
add command to list filenames and paths only
```

---

### **Example 3: Provision Azure AKS cluster with 2 nodes**

**Prompt:**

```
provision AKS cluster with 2 nodes of 8GB and enable ingress controller
```

**Copilot Suggestion:**

```bash
az aks create --resource-group myResourceGroup --name myAKSCluster --node-count 2 --node-vm-size Standard_DS2_v2 --enable-addons ingress-appgw
```

**Revise Prompt:**

```
change resource group to myAKSClust
```

---

### **Example 4: Provision AWS S3 Bucket**

**Prompt:**

```
provision AWS S3 bucket
```

**Copilot Suggestion:**

```bash
aws s3api create-bucket --bucket my-bucket-name --region us-west-2
```

---

### **Example 5: Get last GitHub commit by user**

**Prompt:**

```
list last commit by user along with commit message
```

**Copilot Suggestion:**
GraphQL query or use `*gh`:

```bash
gh api repos/:owner/:repo/commits --jq '.[0].commit.message'
```

---

## **gh copilot explain**

Use this to understand a command.

**Example:**

```bash
gh copilot explain "grep -rl 'token' ."
```

**Copilot will explain:**

* `grep`: search utility
* `-r`: recursive
* `-l`: list filenames only
* `'token'`: search string
* `.`: current directory

---

## **gh copilot revise**

Revise an existing command with new input.

**Example:**

**Original:**

```bash
find . -name "*test*"
```

**Revise Prompt:**

```
change 'test' to 'demo'
```

**Copilot Output:**

```bash
find . -name "*demo*"
```

---

## **gh copilot config**

Set CLI preferences like usage analytics.

**Example:**

```bash
gh copilot config
```

**Follow prompts:**

* Allow or deny usage analytics
* Exit

---

## **Supported Categories**

| Category       | Examples                                   |
| -------------- | ------------------------------------------ |
| Shell Commands | `ls`, `find`, `grep`, `tar`, etc.          |
| Git Commands   | `git reset --hard HEAD~1`, `git log`, etc. |
| GitHub CLI     | `gh pr list`, `gh issue status`            |
| Cloud CLI      | `az`, `aws`, `gcloud` commands             |

---

## **Tips for Best Results**

* Use clear natural language prompts.
* Use the `revise` option to tailor commands.
* Use `explain` to learn and debug.
* Use it as a learning tool for unfamiliar commands.
