# **GitHub Copilot for PR Reviews - Step-by-Step Guide**

## **Introduction**

GitHub Copilot for PR (Pull Request) Reviews helps you review code faster and more efficiently by leveraging AI-powered suggestions. This guide provides a step-by-step walkthrough for:

1. Setting up GitHub Copilot for PR reviews.
2. Defining code review guidelines.
3. Configuring automatic code review at a repository or organization level.

---

## **Prerequisites**

* A GitHub account with access to the repository you want to use.
* GitHub Copilot enabled for your GitHub account.
* Basic understanding of Pull Requests (PR) in GitHub.

---

## **Step 1: Setting Up GitHub Copilot for PR Reviews**

1. **Access the Repository:**

   * Go to the GitHub organization or personal account where your repository is located.
   * Select the repository you want to enable Copilot PR reviews for.

2. **Create a Pull Request (PR):**

   * Make code changes in a new branch.
   * Navigate to the "Pull Requests" tab.
   * Click on "New Pull Request" and select the branch with your changes.
   * Add a PR title and description. You can use Copilot to help generate the description.

3. **Request Copilot to Review the PR:**

   * Go to the "Reviewers" section in the PR.
   * Search for "Copilot" and select it.
   * GitHub Copilot will start reviewing the PR.

---

## **Step 2: Defining Code Review Guidelines**

1. **Open Repository Settings:**

   * Go to the "Settings" tab of the repository.

2. **Navigate to Copilot Code Review Settings:**

   * Scroll down to "Copilot Code Review" (under Preview).

3. **Define Custom Guidelines:**

   * Click on "Create Guidelines".
   * Choose from existing guidelines (like avoiding select \* in SQL) or define your own.
   * Test your guidelines with example code to ensure they work as expected.

4. **Save the Guidelines:**

   * Save the configured guidelines for future reviews.

---

## **Step 3: Configuring Automatic Code Review**

### **At the Repository Level**

1. Go to the "Settings" tab of your repository.
2. Select "Branches".
3. Click on "Branch Rule Set" and create a new rule.
4. Enable "Require Pull Request" for the branch.
5. Set "Request PR Review from Copilot".

### **At the Organization Level**

1. Go to your Organization’s "Settings".
2. Navigate to "Repository Rule Sets".
3. Create a new rule set.
4. Specify the repositories to apply the rule (all or selected).
5. Enable "Request PR Review from Copilot".

---

## **Step 4: Reviewing PRs with Copilot**

1. After creating a PR, request a Copilot review as shown in Step 1.
2. Wait for the Copilot review to complete.
3. Review the Copilot suggestions for each file.
4. Apply or reject the suggested changes as needed.

---

## **Step 5: Understanding Copilot Review Limitations**

* Copilot currently supports review for specific languages (Python, JavaScript, TypeScript, Java, Ruby, Go, Markdown).
* It may not review other languages (like SQL or HTML).

---

## **Conclusion**

GitHub Copilot for PR Reviews is a powerful tool that can automate code reviews, ensure consistent code quality, and enforce organizational guidelines. By following this guide, you can quickly set it up and streamline your code review process.


