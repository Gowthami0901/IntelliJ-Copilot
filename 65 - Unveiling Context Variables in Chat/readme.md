# **GitHub Copilot: Unveiling Context Variables in Chat**

## **Overview: What Are Context Variables in GitHub Copilot Chat?**
Context variables let GitHub Copilot Chat understand **where in your code editor, file system, or terminal** you’re focusing, so it can give **contextual answers or generate content**.

Context variables begin with a **`#` (hash symbol)** and work **inside GitHub Copilot Chat**.

---

## **Pre-requisites**

* Install **Visual Studio Code**
* Install the **GitHub Copilot extension**
* Ensure you're **signed in with GitHub**
* Open a **project folder** (not just a single file)
* Enable **GitHub Copilot Chat** from the sidebar or with `Cmd/Ctrl + I`

---

## **Available Context Variables**

| Context Variable        | Description                                             |
| ----------------------- | ------------------------------------------------------- |
| `#editor`               | Refers to the code in the currently open editor tab     |
| `#file`                 | Allows access to any file in your workspace             |
| `#selection`            | Refers to currently selected code in the editor         |
| `#terminal`             | Refers to your VS Code terminal                         |
| `#terminal.lastCommand` | Refers to the **last command** executed in the terminal |
| `#terminal.selection`   | Refers to **selected output** in the terminal           |

---

## **Step-by-Step Guide with Examples**


### **Step 1: Using `#editor` – Understand the Current File**

**Scenario**: You have a file `verifier.cs` open with some class methods.
**File: `verifier.cs`**

```csharp
public class Verifier {
    public bool IsPalindrome(string input) {
        string reversed = new string(input.Reverse().ToArray());
        return input == reversed;
    }

    public bool IsPrime(int number) {
        if (number <= 1) return false;
        for (int i = 2; i < number; i++) {
            if (number % i == 0) return false;
        }
        return true;
    }
}
```

**Prompt:**

```
Explain the methods in #editor
```

**Copilot Chat Response**:
It will analyze all visible methods like:

```csharp
public bool IsPalindrome(string input) { ... }
public bool IsPrime(int number) { ... }
```

It gives descriptions for each function.

---

### **Step 2: Using `#file` – Load & Analyze Any File in Your Project**

**Scenario**: You want to analyze a file not currently open.
**File: `utilities.cs`**

```csharp
public static class Utilities {
    public static string FormatName(string first, string last) {
        return $"{last}, {first}";
    }

    public static int ParseAge(string input) {
        return int.TryParse(input, out var age) ? age : 0;
    }
}
```

**Prompt:**

```
Explain the methods in #file
```

This will trigger a **file picker** – select any file like `utilities.cs`.

Copilot will open that file virtually and summarize the contents, e.g.,:

* Two static methods
* Utility class for formatting or parsing

---

### **Step 3: Using `#file` for Specific Files**

**File: `environment.ts`**

```ts
export const environment = {
  production: false,
  apiUrl: 'http://localhost:3000/api'
};
```

**Prompt**:

```
What's the use of #file
```

**Example: If you choose `environment.ts`, Copilot might respond:**

> It's an Angular configuration file for storing environment-specific variables.

---

### 🔹 Step 4: Using `#terminal.lastCommand` – Understand the Last Command

**Scenario**: You ran a command like `dotnet build`.

**Prompt:**

```
Explain #terminal.lastCommand
```

**Copilot will respond:**

> The last command `dotnet build` was used to compile your project.
> It will also explain the build output: warnings, errors, etc.

---

### 🔹 Step 5: Using `#terminal.selection` – Explain a Terminal Output Section

**Scenario**: You've selected part of a terminal error message.

**Prompt:**

```
Explain #terminal.selection
```

**Copilot will:**

* Read the selected text
* Explain the error
* Provide potential fixes

---

### **Step 6: Using `#selection` – Work with Selected Code**

**Scenario**: You highlight this code:

```csharp
public bool IsPrime(int number) {
  ...
}
```

**Prompt:**

```
Create unit test for #selection
```

**Copilot generates test cases like:**

```csharp
[TestMethod]
public void TestIsPrime() {
  Assert.IsTrue(obj.IsPrime(7));
  Assert.IsFalse(obj.IsPrime(9));
}
```

---

## **Other Useful Prompts with Context Variables**

| Use Case                | Prompt Example                        |
| ----------------------- | ------------------------------------- |
| Summarize selected code | `Summarize #selection`                |
| Translate selected code | `Translate #selection to Python`      |
| Refactor selected code  | `Refactor #selection for readability` |
| Explain purpose of file | `What is the purpose of #file`        |
| Fix errors in terminal  | `Fix #terminal.selection`             |
| Add comments to code    | `Add comments to #editor`             |
| List todos in file      | `Find all TODOs in #editor`           |

---

## **Tips & Best Practices**

* Use **context variables instead of copying code** manually.
* Combine context + command, e.g.:

  * `Summarize #file`
  * `Generate unit tests for #editor`
* Select minimal required code when using `#selection`.
* Chain prompts: Ask for unit test → ask for mocking → ask for refactor.

---

## **Summary**

| Context Variable        | Usage Example                     |
| ----------------------- | --------------------------------- |
| `#editor`               | `Explain the methods in #editor`  |
| `#file`                 | `Explain the purpose of #file`    |
| `#selection`            | `Create unit test for #selection` |
| `#terminal.lastCommand` | `Explain #terminal.lastCommand`   |
| `#terminal.selection`   | `Fix #terminal.selection`         |

These features help you **supercharge development** using **Copilot Chat** without leaving your flow.
