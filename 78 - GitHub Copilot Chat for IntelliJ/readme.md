# **GitHub Copilot Chat for IntelliJ**

## **Step 1: Installation of GitHub Copilot in IntelliJ**

### **Prerequisites:**

* IntelliJ IDEA (Ultimate or Community)
* GitHub Copilot for Business license (for Copilot Chat in private beta)
* JetBrains Plugin enabled after Nov 8

### **Installation:**

1. Open IntelliJ IDEA.
2. Go to **Settings > Plugins**.
3. Search for `GitHub Copilot`.
4. Install the plugin (includes Copilot + Copilot Chat).
5. Restart IntelliJ.


```plaintext
IntelliJ → Settings → Plugins
               ↓
      Search: GitHub Copilot
               ↓
    Click [Install] → Restart
```

---

## **Step 2: Using Copilot Chat Interface**

After installation, a new **Chat tab** appears in the **bottom panel** of IntelliJ.

### **Available Slash Commands:**

| Slash Command | Purpose               |
| ------------- | --------------------- |
| `/explain`    | Explain selected code |
| `/simplify`   | Simplify logic        |
| `/test`       | Generate test cases   |
| `/docs`       | Add documentation     |
| `/fix`        | Fix logic issues      |
| `/feedback`   | Send feedback         |

---

## **Step 3: Example - Explain Java Code**

**Code:**

```java
public int add(int a, int b) {
    return a + b;
}
```

**Prompt:**

```plaintext
/explain
```

**Copilot Suggestion:**

"Defines a method `add` that takes two integers and returns their sum."

---

## **Step 4: Simplify Code Logic**

**Complex Code:**

```java
if (numbers.contains(x)) {
    System.out.println("Exists");
} else {
    System.out.println("Not Found");
}
```

**Prompt:**

```plaintext
/simplify
```

**Copilot Suggestion:**

```java
System.out.println(numbers.contains(x) ? "Exists" : "Not Found");
```

---

## **Step 5: Generate Unit Tests**

**Function:**

```java
public int divide(int a, int b) {
    if (b == 0) throw new IllegalArgumentException();
    return a / b;
}
```

**Prompt:**

```plaintext
/test
```

**Copilot Suggestion:**

```java
@Test
void divideByZero_shouldThrowException() {
    assertThrows(IllegalArgumentException.class, () -> calculator.divide(10, 0));
}
```

📌 **Note**: It also references `Calculator.java` and `CalculatorTest.java`.

---

## **Step 6: Add Documentation**

**Code:**

```java
public int multiply(int x, int y) {
    return x * y;
}
```

**Prompt:**

```plaintext
/docs
```

**Copilot Suggestion:**
```java
/**
 * Multiplies two integers.
 * @param x first number
 * @param y second number
 * @return product of x and y
 */
```

---

## **Step 7: Fix Bug Automatically**

**Faulty Code:**

```java
public int subtract(int a, int b) {
    return a + b; // Incorrect
}
```

**Prompt:**

```plaintext
/fix
```

**Copilot Suggestion:**

```java
// Suggests: return a - b;
```

---

## **Step 8: Generate Mock-based Test (Mockito)**

**Code:**

```java
public class ToDoService {
    public List<String> getTodos(String user) {
        // Mock this
    }
}
```

**Prompt:**

```plaintext
Generate unit test using Mockito to mock ToDoService
```

**Copilot Suggestion:**

```java
@Mock
ToDoService service;

@Test
public void testTodos() {
    when(service.getTodos("Alice")).thenReturn(Arrays.asList("Task1", "Task2"));
    ...
}
```

---

## **Summary of Use-Cases**

| Feature        | What It Does                 | Prompt           |
| -------------- | ---------------------------- | ---------------- |
| Explain Code   | Understand any block         | `/explain`       |
| Simplify Code  | Refactor and reduce lines    | `/simplify`      |
| Generate Tests | Unit test generation         | `/test`          |
| Add Docs       | JavaDoc automation           | `/docs`          |
| Auto-Fix Logic | Debug logic mistakes         | `/fix`           |
| Mocks/Mockito  | Test with mocking frameworks | Free-text prompt |
