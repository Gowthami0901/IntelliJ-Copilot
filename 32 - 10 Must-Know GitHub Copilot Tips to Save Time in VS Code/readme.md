# **10 Must-Know GitHub Copilot Tips to Save Time in VS Code**

## **Introduction**

Welcome back to Tech Drill, your ultimate source for GitHub and GitHub Copilot insights! In today’s video, we'll unlock **10 time-saving tips for GitHub Copilot in VS Code** that every developer needs to know. These tips will boost your productivity, streamline your workflow, and make you a GitHub Copilot pro.

## **Prerequisites**

* A GitHub account (free account is sufficient).
* Installed Visual Studio Code (VS Code) or any JetBrains IDE (e.g., IntelliJ, PyCharm).
* Stable internet connection.

---

## **Step 1: Understanding GitHub Copilot Free Tier**

* GitHub Copilot Free Tier provides the following:

  * 2,000 code completions per month.
  * 60 chat requests per month.
  * Access to two models: `Claude` and `GPT-4`.

* Limitations of Free Tier:

  * No unlimited code completions or chat requests.
  * Only accessible in VS Code and JetBrains IDEs.

---

## **Step 2: Setting Up GitHub Copilot in VS Code**

### **1. Installing GitHub Copilot Extension**

1. Open VS Code.
2. Go to the Extensions tab (left sidebar).
3. Search for "GitHub Copilot".
4. Click "Install" to add the extension.

### **2. Signing In with GitHub Account**

1. After installation, click "Sign In" in the Copilot sidebar.
2. Use your GitHub account (ensure you are using a free account for free tier access).
3. Authorize GitHub Copilot in the VS Code prompt.

### **3. Verifying Free Tier Activation**

1. Go to `GitHub.com` → `Settings` → `Copilot`.
2. Ensure that "GitHub Copilot Free" is enabled.
3. You will see your usage limits (2,000 code completions and 60 chat requests per month).

---

## **Step 3: 10 Time-Saving Tips for GitHub Copilot (with Examples)**

### **Tip 1: Drag Files to Copilot Chat**
* Drag files directly from your editor or source tree into Copilot chat.
* Example usage:
```prompt
drag main.js into chat

"Explain the authentication logic in this file"
```

Copilot suggestion: 
*provides detailed explanation of auth logic*


### **Tip 2: Add Context with Folders**
* Example folder structure:
```
src/
  ├── auth/
  │   ├── login.js
  │   └── validation.js
  └── utils/
      └── helpers.js
```
* Drag the entire `auth` folder for authentication-related queries

### **Tip 3: Apply Changes Directly in Editor**
* Example scenario:
```javascript
// Before
function calculateTotal(items) {
    // TODO: Implement calculation
}

// After using "Apply in Editor"
function calculateTotal(items) {
    return items.reduce((sum, item) => sum + item.price * item.quantity, 0);
}
```

### **Tip 4: Edit with Copilot**
* Example command:
```plaintext
You: "Convert all console.log statements to use Winston logger"
Copilot: *Shows preview of changes across multiple files*
```

### **Tip 5: Multi-Edit Overlay**
* Example view:
```diff
File: user.service.js
- console.log('User created:', user);
+ logger.info('User created:', { userId: user.id });

File: auth.service.js
- console.log('Login attempt:', email);
+ logger.info('Login attempt:', { email });
```

### **Tip 6: Add Relevant Files**
* Example suggestion:
```plaintext
Copilot: "I notice you're working on authentication. 
Would you like to include these related files?
- auth.middleware.js
- jwt.config.js
- user.model.js"
```

### **Tip 7: Customize Commit Messages**
* Settings example:
````json
{
    "github.copilot.chat.commitMessageTemplate": "feat(${scope}): ${description}\n\n${body}"
}
````

### **Tip 8: Enable Copilot for Unknown Extensions**

* Allow Copilot to work with any file type by enabling "Plain Text" support.

### **Tip 9: Add Coding Tips**

* Create a `copilot_instructions.md` file to set coding standards.

### **Tip 10: Generate Test Configuration**

* Use "Setup Test" to automatically generate test configurations for your project.

```javascript
// Original code
function validateEmail(email) {
    return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email);
}

// Generated test configuration
describe('Email Validation', () => {
    test('should validate correct email format', () => {
        expect(validateEmail('test@example.com')).toBeTruthy();
        expect(validateEmail('invalid.email')).toBeFalsy();
    });
});
```
