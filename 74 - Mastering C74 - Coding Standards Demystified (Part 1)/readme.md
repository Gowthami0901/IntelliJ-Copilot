# **Part 1: Setting the Stage for Code Reviews with GitHub Copilot**

## **Prerequisites**

Before we dive into Copilot-based reviews, make sure you have:

* GitHub Copilot enabled in your editor (e.g., VS Code)
* Your codebase open in the workspace
* Optionally, a **coding standards file** like `coding.yml` or `coding.json`

---

## **Step 1: Load Your Code File**

Start by loading the code file you want to review. For this example, we’ll use a JS file named `stringUtils.js` and a Python file `binary_search.py`.

**Example: `stringUtils.js`**

```javascript
function validateEmail(email) {
  var re = /\S+@\S+\.\S+/;
  return re.test(email);
}

function cleanStr(str) {
  return str.replace(/[^a-z0-9]/gi, '').toLowerCase();
}

function check(str1, str2) {
  const rc1 = cleanStr(str1);
  const rc2 = cleanStr(str2);
  return rc1.split('').sort().join('') === rc2.split('').sort().join('');
}
```

---

## **Step 2: Check Naming Conventions**

**Prompt to Copilot:**

> **“Do the names of my functions and variables clearly convey their purpose?”**

**Expected Copilot Suggestions:**

* `check` → `areAnagrams`: Better describes the intent
* `re` → `emailRegex`: More descriptive
* `rc1`, `rc2` → `cleanedStr1`, `cleanedStr2`: Improved clarity
* `cleanStr` is okay, but `cleanString` might be better in some teams

---

**Example After Copilot Suggestions:**

```javascript
function validateEmail(email) {
  var emailRegex = /\S+@\S+\.\S+/;
  return emailRegex.test(email);
}

function cleanString(str) {
  return str.replace(/[^a-z0-9]/gi, '').toLowerCase();
}

function areAnagrams(str1, str2) {
  const cleanedStr1 = cleanString(str1);
  const cleanedStr2 = cleanString(str2);
  return cleanedStr1.split('').sort().join('') === cleanedStr2.split('').sort().join('');
}
```

---

## **Step 3: Check Naming Convention Consistency Across Workspace**

**Prompt to Copilot:**

> **“Is the function name `areAnagrams` consistent with the naming conventions used across my workspace?”**

**Expected Copilot Behavior:**

* Copilot will scan other files (if allowed) and suggest whether your naming pattern matches others.
* E.g., it may suggest `isAnagram` if most functions use `isX` format.

---

## **Step 4: Use a Coding Standards File**

Suppose you have a file named `coding.yml` with the following standard:

```yaml
function_naming: snake_case
variable_naming: snake_case
max_line_length: 79
indentation: 4_spaces
comment_format:
  docstring: numpydoc
  inline: "# style"
```

### **Example Python Code (`binary_search.py`)**

```python
def checkPrime(n):
  if n <= 1:
    return False
  for i in range(2, n):
    if n % i == 0:
      return False
  return True
```

**Prompt to Copilot:**

> **“Review this Python file using coding standards defined in `coding.yml`.”**

**Expected Suggestions from Copilot:**

* `checkPrime` → `check_prime` (enforce `snake_case`)
* Add proper indentation (4 spaces)
* Add docstrings
* Add inline comments using `#`

---

**Final Suggested Version from Copilot:**

```python
def check_prime(n):
    """
    Check if a number is prime.

    Parameters
    ----------
    n : int
        The number to check.

    Returns
    -------
    bool
        True if n is prime, False otherwise.
    """
    if n <= 1:
        return False
    for i in range(2, n):
        if n % i == 0:
            return False
    return True  # Prime number
```

---

## **Additional Prompts You Can Use with Copilot**

Here are some more helpful prompts to fine-tune your code review:

### **General Naming Review**

```text
"Check if function and variable names follow camelCase or snake_case as per project standards."
```

### **Code Clarity and Legibility**

```text
"Are the function names and variable names readable and self-explanatory?"
```

### **Codebase Consistency**

```text
"Does the naming convention of this function match other similar functions in my project?"
```

### **Custom Coding Standards**

```text
"Review this code against the standards in 'coding.json' in my workspace."
```

---

## **Conclusion**

GitHub Copilot can **dramatically speed up code reviews**, especially for **coding standards and naming conventions**. Use prompts strategically to:

* Evaluate code clarity
* Enforce your team’s naming rules
* Ensure consistency across large codebases
