# **GitHub Copilot's Code Referencing** 

## **What is Code Referencing in Copilot?**

**Code Referencing** lets you know if the code suggestion by GitHub Copilot matches code from a **public repository** on GitHub, and what **licenses** are associated with it. This is important because using code with incompatible licenses might pose legal or compliance issues.

---

## **Prerequisites**

1. **GitHub Copilot installed** in your IDE:
   * VS Code, JetBrains (IntelliJ), or Neovim
2. A **GitHub account** with access to Copilot (subscription if required)
3. Copilot enabled in your IDE settings

---

## **Step-by-Step Demo Guide**

### **Step 1: Trigger Copilot Suggestions**

Let’s try a simple function that Copilot might suggest based on publicly available code (like a binary search).

**Prompt Example (Python):**

```python
def binary_search(arr, target):
```

**Copilot Suggestion:**

```python
    low = 0
    high = len(arr) - 1
    while low <= high:
        mid = (low + high) // 2
        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            low = mid + 1
        else:
            high = mid - 1
    return -1
```

If **code referencing is triggered**, you will see a **`Copilot Code Reference`** entry in the sidebar or output panel (varies by IDE).

---

### **Step 2: Check for Referenced Public Code**

After the suggestion appears, Copilot checks whether the code exists in public repositories.

* You will see:

  * A link saying **"Code reference found in X public repositories"**
  * A button to **“View details”**

> 💡 Example message:
> “This code matches content from 5 public repositories under licenses: MIT, GPL, Unknown.”

---

### **Step 3: View Code Reference Details**

Click on the **“View Details”** or open **Copilot Log** to see:

* Names of public repositories
* License types (e.g., MIT, GPL, Unknown)
* Exact matching lines

> 🔗 You will see something like:
> `Matched repositories:`
>
> * `user123/js-utils (MIT)`
> * `codehub/util-lib (Unknown)`

---

### **Step 4: Decide Based on License**

You should decide whether to:

* ✅ **Use the code** (if MIT or permissive license)
* 🚫 **Avoid** using code (if GPL or Unknown license)
* 🔁 **Ask Copilot to regenerate**

---

## **Forcing Code Reference to Trigger (Advanced Testing)**

If you want to **force Copilot to match** public code (for demo/testing), use well-known code patterns.

### **Prompt Examples:**

#### 🔸 Python — Binary Search

```python
def binary_search(arr, x):
```

#### 🔸 JavaScript — Debounce function

```javascript
function debounce(func, wait) {
```

#### 🔸 Java — String Reverse

```java
public static String reverse(String input) {
```

Once Copilot suggests, you may see a reference. If not, try modifying the prompt to match common patterns.

---

## **Regenerate Suggestion with Different License**

If Copilot matches code under an undesirable license (e.g., GPL), you can:

1. **Comment out** the suggestion
2. Rephrase your prompt
3. **Trigger Copilot again** for a new suggestion

**Example:**

```python
# Let's try a different implementation without public reference
def binary_search(arr, x):
```

Copilot might generate a slightly different version that doesn't match a public repo.

---

## **Enable Public Code Filtering (Optional)**

Admins of GitHub Enterprise accounts can **enable public code filtering**, so Copilot **avoids** suggesting any code from public repositories altogether.

> **Settings path**: GitHub Enterprise → Copilot → Policy → Public Code Filtering

---

## **Testing With Various Languages**

Try the following to test code referencing in multiple languages:

| Language       | Prompt Example                       |
| -------------- | ------------------------------------ |
| **Python**     | `def factorial(n):`                  |
| **Java**       | `public static int factorial(int n)` |
| **JavaScript** | `function throttle(fn, limit)`       |
| **C**          | `int is_prime(int number)`           |

---

## **Where to View Code References in IDE**

### **VS Code:**

* Bottom panel → **Copilot Output**
* Sidebar → **Copilot** icon → "Code References"

### **IntelliJ:**

* Copilot tab → "Code Suggestions"
* Right-click the code → **“View Copilot Reference”**

---

## **Summary**

| Feature              | Description                                 |
| -------------------- | ------------------------------------------- |
| 🔍 Code Reference    | Tells if suggested code matches public repo |
| ⚖️ License Info      | Helps you decide based on usage terms       |
| ⚙️ Regenerate Option | Avoid risky code                            |
| 🔐 Filtering         | Enterprise-level control for public code    |

