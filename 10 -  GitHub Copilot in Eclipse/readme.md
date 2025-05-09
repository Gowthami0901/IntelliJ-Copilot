# GitHub Copilot in Eclipse: Step-by-Step Guide

## Introduction

GitHub Copilot is an AI-powered code completion tool that helps you write code faster and smarter. This guide will help you set up GitHub Copilot in Eclipse, use its code completion features, and explore Copilot Chat.

---

## Prerequisites

* Installed Eclipse IDE (latest version recommended)
* A GitHub account
* An active GitHub Copilot subscription
* A Personal Access Token (PAT) from GitHub

---

## 1. Creating a Personal Access Token (PAT) on GitHub

1. Go to **GitHub Settings** by clicking on your profile picture in the top-right corner.
2. Select **"Developer settings"**.
3. Click on **"Personal access tokens (classic)"**.
4. Click **"Generate new token"** or **"Generate new token (classic)"**.
5. Provide a **"Note"** for your token (e.g., "Eclipse Copilot Access").
6. Set the **"Expiration"** to your preference (recommended: 90 days).
7. Select the **"Scopes"** you need:

   * `repo` for full repository access.
   * `gist` if you want to use Copilot with Gists.
   * `workflow` for GitHub Actions.
8. Click **"Generate token"**.
9. Copy the generated token and keep it secure (you will not see it again).

---

## 2. Installing GitHub Copilot Extension in Eclipse

1. **Open Eclipse IDE.**
2. Go to **Help > Eclipse Marketplace**.
3. In the search bar, type **"GitHub Copilot"**.
4. If you see the **"GitHub Copilot"** extension, click on **"Install"**.

   * Alternatively, you can drag and drop the GitHub Copilot extension from the GitHub Copilot page in your browser into the Eclipse Marketplace window.
5. Accept the terms and conditions and click **"Finish"**.
6. During installation, you may be asked to trust the Microsoft certificate. Click **"Trust Always"**.
7. Wait for the installation to complete.
8. Restart Eclipse to enable the GitHub Copilot extension.

---

## 3. Signing In to GitHub Copilot

1. After restarting, open Eclipse.
2. You will see a GitHub Copilot option in the menu or a Copilot icon in the status bar.
3. Click on the GitHub Copilot icon.
4. If not signed in, you will be prompted to **Sign In with GitHub**.
5. When prompted, use your **Personal Access Token (PAT)** for authentication.

---

## 4. Using GitHub Copilot Code Completion

1. Open any Java file (or any supported language file) in Eclipse.
2. Start writing code or add a comment describing what you want (e.g., `// Calculate the square of a number`).
3. GitHub Copilot will automatically suggest code completions.
4. Press **Tab** to accept the suggestion, **Esc** to ignore, or **Arrow Keys** to explore other suggestions.

---

## 5. Using GitHub Copilot Chat

1. Click on the GitHub Copilot icon in Eclipse.
2. Select **"Copilot Chat"**.
3. Type your questions or instructions in the chat (e.g., "Explain this code" or "Generate unit tests for this method").
4. Copilot will respond with relevant explanations or code.

---

## 6. Advanced: Documenting and Testing with Copilot

1. To generate unit tests:

   * Open the Java class you want to test.
   * In Copilot Chat, type "Generate unit tests for this class/method".
2. To generate code documentation:

   * Highlight the method or class you want to document.
   * In Copilot Chat, type "Document this method/class".

---

## 7. Troubleshooting

* If you don’t see GitHub Copilot in Eclipse:

  * Ensure that you have installed the latest version of Eclipse.
  * Reinstall the GitHub Copilot extension.
  * Restart Eclipse.
* If code completion is not working:

  * Ensure you are signed in to GitHub.
  * Check your GitHub Copilot subscription status.

---

## Conclusion

Congratulations! You have successfully set up GitHub Copilot in Eclipse, explored its code completion features, and learned how to use Copilot Chat for code explanations and test generation. Happy coding!
