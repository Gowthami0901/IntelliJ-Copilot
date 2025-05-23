# **GitHub Copilot for Documentation**

**What is GitHub Copilot for Documentation?**

GitHub Copilot is an AI pair programmer that helps not only with code generation but also with **automatically documenting code** — making your code more readable, maintainable, and transferable to other developers.


**Why Use Copilot for Documentation?**

* Saves time writing repetitive JavaDocs or inline comments
* Helps onboard new developers faster
* Makes legacy code easier to understand
* Reduces technical debt
* Ensures better API visibility (Swagger/OpenAPI)

---

## **Pre-requisites**

1. Install [GitHub Copilot](https://github.com/features/copilot) in your IDE:
   * Visual Studio Code
   * IntelliJ
   * JetBrains Rider
2. Enable Copilot Suggestions
3. Code file(s) to document (Java, .NET, Python, Terraform, etc.)

---

## **Java Code - Add JavaDoc and Inline Comments**

**Input File (`Calculator.java`)**

```java
public class Calculator {
    public int add(int a, int b) {
        return a + b;
    }
}
```

**Prompt**
```plain text
`Add JavaDoc to my code and line-by-line comments`
```


**Copilot Suggestion**

```java
/**
 * Calculator class provides basic arithmetic operations.
 */
public class Calculator {

    /**
     * Adds two integers.
     * 
     * @param a First integer
     * @param b Second integer
     * @return Sum of a and b
     */
    public int add(int a, int b) {
        // Return the sum of two numbers
        return a + b;
    }
}
```

> **Why**: Helps other developers quickly understand the purpose and usage of the method.

---

## **Unit Tests - Add Comments to Mock Test**

**Input File (`TodoServiceTest.java`)**

```java
@RunWith(MockitoJUnitRunner.class)
public class TodoServiceTest {

    @Mock
    private TodoService todoService;

    @Before
    public void setup() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void testGetTodos() {
        List<String> todos = Arrays.asList("Buy Milk", "Clean Room");
        when(todoService.getTodos()).thenReturn(todos);

        List<String> result = todoService.getTodos();
        assertEquals(2, result.size());
    }
}
```


**Prompt**
```plain text
`Add comments to my test code`
```


**Copilot Suggestion**

```java
// Use MockitoJUnitRunner to enable mock functionality
@RunWith(MockitoJUnitRunner.class)
public class TodoServiceTest {

    // Mocking the TodoService
    @Mock
    private TodoService todoService;

    // Setup method to initialize mocks
    @Before
    public void setup() {
        MockitoAnnotations.initMocks(this);
    }

    // Test method to validate getTodos behavior
    @Test
    public void testGetTodos() {
        // Define sample list of todos
        List<String> todos = Arrays.asList("Buy Milk", "Clean Room");

        // Mock the getTodos() method
        when(todoService.getTodos()).thenReturn(todos);

        // Call the mocked method
        List<String> result = todoService.getTodos();

        // Validate the returned list size
        assertEquals(2, result.size());
    }
}
```


> **Why**: Enhances clarity for QA and DevOps teams reviewing test logic.


---

## **Terraform Scripts - Add Comments for Each Block**

**Input File (`main.tf`)**

```hcl
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}
```


**Prompt**

```plain text
`Add documentation for my Terraform code`
```

**Copilot Suggestion**

```hcl
# Configure the Microsoft Azure provider
provider "azurerm" {
  features {}
}

# Create an Azure Resource Group named "example-resources"
resource "azurerm_resource_group" "example" {
  name     = "example-resources"   # Name of the resource group
  location = "East US"             # Region where resources will be deployed
}
```

> **Why**: Helps DevOps team easily understand infrastructure components.

---

## **.NET Web API - Add Swagger-Based Documentation**

**Input File (`TodoController.cs`)**

```csharp
[ApiController]
[Route("[controller]")]
public class TodoController : ControllerBase {

    [HttpGet]
    public IEnumerable<string> GetTodos() {
        return new string[] { "Learn Copilot", "Document Code" };
    }
}
```


**Prompt**
```plain text
`Add Swagger documentation for this API`
```


**Copilot Suggestion**

```csharp
/// <summary>
/// Controller to manage Todo operations.
/// </summary>
[ApiController]
[Route("[controller]")]
public class TodoController : ControllerBase {

    /// <summary>
    /// Retrieves a list of todos.
    /// </summary>
    /// <returns>List of todos</returns>
    [HttpGet]
    [ProducesResponseType(StatusCodes.Status200OK)]
    public IEnumerable<string> GetTodos() {
        return new string[] { "Learn Copilot", "Document Code" };
    }
}
```

> **Why**: Enables auto-generation of OpenAPI (Swagger) docs for UI/API testing.

---

## **General Readability**

**Input File**

```java
public class User {
    String name;
    int age;
}
```


**Prompt**
```plain text
`Make this class more readable`
```


**Copilot Suggestion**

```java
// Class representing a user entity
public class User {

    // Name of the user
    String name;

    // Age of the user
    int age;
}
```

> **Why**: Improved readability helps in code reviews and future debugging.

---

## **How to Accept or Improve Suggestions**

* Use `Tab` to accept Copilot suggestion
* Edit if something is missing or incorrect
* Regenerate by rephrasing your prompt if not satisfied

---

## **Optional Input Files/Setup**

| Type                             | Example                                   |
| -------------------------------- | ----------------------------------------- |
| `.editorconfig`                  | Enable consistent formatting              |
| `README.md`                      | Link to API documentation                 |
| `swagger.json` or `swagger.yaml` | Swagger generation                        |
| `.copilotignore`                 | Ignore large files Copilot shouldn’t scan |

---

## **Summary**

| Feature             | Description                                 |
| ------------------- | ------------------------------------------- |
| **JavaDocs**        | Comment-based docs for Java methods/classes |
| **Inline Comments** | Line-by-line explanations                   |
| **Swagger/OpenAPI** | REST API schema documentation               |
| **Terraform/YAML**  | Infrastructure explanation                  |
| **Test Mocks**      | Documenting unit/integration tests          |
