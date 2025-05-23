# **GitHub Copilot Hints & Techniques**

Here's a **step-by-step guide** for using GitHub Copilot to fix compile errors, get code explanations, and use inline chat—just like in the demo you provided. This guide includes **examples, prompts, Copilot suggestions, and file inputs** for hands-on practice.

---

## **Prerequisites**

* Install **GitHub Copilot extension** in **VS Code** or **IntelliJ**.
* Ensure you're signed in with a GitHub account that has Copilot enabled.
* Use a project in **C#**, **Python**, or **JavaScript** for best results.

---

## **Part 1: Fixing Compile Errors with GitHub Copilot**

### **Example: C# Console App with Error**

**File: `Program.cs`**

```csharp
using System;

class Program
{
    static void Main(string[] args)
    {
        string[] lines = File.ReadAllLines("data.txt");
        Console.WriteLine(lines);
    }
}
```

### **Problem:**

* You're missing a `using System.IO;` directive.
* `Console.WriteLine(lines);` should loop through the array.

### **Steps:**

1. **Run `dotnet build` in terminal.**

   ```bash
   dotnet build
   ```

2. **Right-click on error in terminal > `GitHub Copilot: Explain this error`.**

3. **Copilot Suggestion**:

   * Suggests: `using System.IO;`
   * Suggests looping with `foreach`

4. **Fix:**

```csharp
using System;
using System.IO;

class Program
{
    static void Main(string[] args)
    {
        string[] lines = File.ReadAllLines("data.txt");
        foreach (var line in lines)
        {
            Console.WriteLine(line);
        }
    }
}
```

---

## **Part 2: Using Copilot to Explain Concerns in Code**

### **Example: Python Script with Issues**

**File: `demo.py`**

```python
scores = [10, 20, 30]
print(scor)
```

### **Problem:**

* Typo: `scor` should be `scores`.

### **Steps:**

1. Hover over the red squiggle (`scor`).
2. Press `Cmd+.` or `Ctrl+.` → Select `Explain with Copilot`.

### **Copilot Suggestion:**

* "NameError: name 'scor' is not defined. Did you mean 'scores'?"


---

## **Part 3: Using Inline Chat for Feature Requests**

### **Example Prompt in Inline Chat**

Open any file and press:

* `Cmd+I` (Mac) or `Ctrl+I` (Windows) to trigger Copilot Chat (or use sidebar).

### **Prompt:**

```plaintext
Define a method to check if a number is prime. Define main to invoke it.
```

### **Copilot Suggestion:**

```python
def is_prime(n):
    if n < 2:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True

def main():
    number = 13
    if is_prime(number):
        print(f"{number} is a prime number")
    else:
        print(f"{number} is not a prime number")

main()
```

---

## **Extend Code with New Prompts**

### **Prompt:**

```plaintext
Add functionality to check if the number is even or odd before checking for prime.
```

### **Copilot Suggestion:**

```python
def is_even(n):
    return n % 2 == 0

def main():
    number = 13
    if is_even(number):
        print(f"{number} is even")
    else:
        print(f"{number} is odd")

    if is_prime(number):
        print(f"{number} is a prime number")
    else:
        print(f"{number} is not a prime number")
```

---

## **Sample File Structure**

```
copilot-demo/
├── Program.cs       # For C# compile error demo
├── demo.py          # For Python explanation + inline chat
├── data.txt         # Dummy text file for ReadAllLines()
```

---

## **Summary**

| Feature                  | Prompt/Action                                | Output                            |
| ------------------------ | -------------------------------------------- | --------------------------------- |
| Fix Compile Error        | Right-click on error > Copilot: Explain this | Suggest fixes, imports, syntax    |
| Explain Code Concern     | Hover > Cmd+. > Explain with Copilot         | Get detailed reasoning            |
| Inline Chat Suggestions  | Cmd+I (Mac) or Ctrl+I > Prompt               | Generate methods, fix logic       |
| Extend Feature Prompting | “Add X functionality”                        | Copilot generates code in context |
