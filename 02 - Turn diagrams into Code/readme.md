# **GitHub Copilot Vision in IntelliJ**

## **Overview**

GitHub Copilot Vision enables developers to turn images and diagrams directly into working code using GitHub Copilot's AI capabilities, integrated into IntelliJ IDEA. 

---

## **Table of Contents**

- [**GitHub Copilot Vision in IntelliJ**](#github-copilot-vision-in-intellij)
  - [**Overview**](#overview)
  - [**Table of Contents**](#table-of-contents)
  - [**Introduction to Copilot Vision**](#introduction-to-copilot-vision)
  - [**Setup Instructions**](#setup-instructions)
    - [**Requirements:**](#requirements)
    - [**How to Use:**](#how-to-use)
  - [**Demo Breakdown**](#demo-breakdown)
    - [**Demo 1: Analyze Architecture Diagrams**](#demo-1-analyze-architecture-diagrams)
      - [**High-level System Architecture Diagram**](#high-level-system-architecture-diagram)
    - [**Demo 2: Generate Class Files from Class Diagrams**](#demo-2-generate-class-files-from-class-diagrams)
      - [**UML Class Diagram**](#uml-class-diagram)
    - [**Demo 3: Generate APIs and Models from Use Case Diagrams**](#demo-3-generate-apis-and-models-from-use-case-diagrams)
      - [**Use case Diagram**](#use-case-diagram)
    - [**Demo 4: Data Modeling from ER Diagrams**](#demo-4-data-modeling-from-er-diagrams)
      - [**Entity Relationship Diagram**](#entity-relationship-diagram)
    - [**Demo 5: Generate Test Cases from Visual Flows**](#demo-5-generate-test-cases-from-visual-flows)
      - [**Flowchart for Process Logic**](#flowchart-for-process-logic)
    - [**Demo 6: Parse Network Topology to Generate Config Scripts**](#demo-6-parse-network-topology-to-generate-config-scripts)
      - [**Network Topology Diagram**](#network-topology-diagram)
    - [**Demo 7: Screen Design to Frontend Code**](#demo-7-screen-design-to-frontend-code)
      - [**Wireframe/Mockup of a UI Screen**](#wireframemockup-of-a-ui-screen)
    - [**Demo 8: Modify Existing Code Based on a Diagram**](#demo-8-modify-existing-code-based-on-a-diagram)
      - [**Updated Component Diagram**](#updated-component-diagram)
    - [**Demo 9: Hand-Drawn Diagram to Code**](#demo-9-hand-drawn-diagram-to-code)
      - [**Code Scaffolding and Suggestions**](#code-scaffolding-and-suggestions)
  - [**Conclusion**](#conclusion)


---

## **Introduction to Copilot Vision**

GitHub Copilot Vision is an AI tool that allows developers to interact with visual inputs (images/diagrams) inside the IntelliJ IDE. Instead of writing boilerplate code manually, developers can upload or paste a diagram and prompt Copilot to generate relevant code.

---

## **Setup Instructions**

### **Requirements:**

* IntelliJ IDEA (latest version recommended)
* GitHub Copilot plugin installed
* GitHub Copilot subscription
* Enable Vision capabilities under Copilot Labs (Beta)

### **How to Use:**

1. Open IntelliJ and install the GitHub Copilot plugin.
2. Log in with your GitHub credentials.
3. Drag and drop an image or diagram into the editor.
4. Use `Ask Copilot` or `/` to trigger Vision analysis.

---

## **Demo Breakdown**

### **Demo 1: Analyze Architecture Diagrams**

#### **High-level System Architecture Diagram**

**Identified Key Components**
- The system design layout will highlight all the key components that have been identified through the analysis of the diagram.

**Proposed System Design Layout**
- A coherent system design layout will be proposed, showcasing how the identified components interact with each other.

**Analytical Capabilities**
- The output demonstrates the analytical capabilities of GitHub Copilot Vision in processing and interpreting complex diagrams.


* **Upload a system or architecture diagram**
![alt text](images/soa-architecture.png)

**Example Prompt:**
* Ask Copilot in your IDE

![alt text](images/img9.png)

**Copilot Output:**
* Copilot generates a summary explaining components, flow, and interactions.
  
![alt text](images/img10.png)

**Example Prompt:**
* Ask Copilot in your IDE

![alt text](images/img11.png)

**Copilot Output:**
![alt text](images/img12.png)

### **Demo 2: Generate Class Files from Class Diagrams**

#### **UML Class Diagram**
**Structure Representation**
- The diagram illustrates how classes are structured, including attributes,  
methods, and associations between them.

**Input for Code Generation**
- This UML class diagram serves as a crucial input for automated code  
generation processes in software development.

**Automatic Class Generation**
- The tool automatically generates class stubs in Java or Kotlin from a provided  
UML diagram, saving developers time.

**Efficiency and Accuracy**
- The generated class stubs maintain high accuracy and efficiency, reflecting the  
structure defined in the UML diagram.


* **Upload UML class diagram**
![alt text](images/class-diagram.jpg)


**Example Prompt:**
* Ask Copilot in your IDE

![alt text](images/img13.png)

**Copilot Output:**
* Output: Java/Python classes with attributes and methods.

![alt text](images/img14.png)


### **Demo 3: Generate APIs and Models from Use Case Diagrams**

#### **Use case Diagram**
**System Interactions**
- The diagram outlines key interactions within the system, providing insights into user roles and functionalities.

**Code Generation Process**
- Once defined, these interactions can be processed to generate the corresponding code outputs for development.

**Automatically Generated API Endpoints**
- The tool can generate API endpoints automatically, streamlining the development process and ensuring consistency.

**Service Classes Overview**
- Service classes define business logic and facilitate communication within the application.

**Data Transfer Objects (DTOs)**
- DTOs efficiently transfer data between layers, reducing redundancy and improving clarity.


* **Upload use case diagram showing actors and use cases**
  
![alt text](images/uml-usecase-diagram.jpg)

**Example Prompt:**
* Ask Copilot in your IDE

![alt text](images/img15.png)

**Copilot Output:**
* Copilot generates controller methods and DTOs.
* Example: `registerUser()`, `loginUser()` API handlers.

![alt text](images/img16.png)

### **Demo 4: Data Modeling from ER Diagrams**

#### **Entity Relationship Diagram**

**Visual Representation of Data**
- An ER diagram visually represents data models, showcasing entities and their relationships within the system.

**ER Diagram to Schema**
- The ER diagram serves as the foundation for generating a complete database schema automatically, improving accuracy.

**Model Classes Generation**
- Copilot generates corresponding model classes from the schema, enabling faster and more efficient development of applications.

**Streamlined Development Process**
- This automated generation process greatly reduces manual effort, allowing developers to focus on building features.


* **Upload ERD with entities and relationships**
![alt text](images/ER-Oder.png)

**Example Prompt:**
* Ask Copilot in your IDE

![alt text](images/img17.png)

**Copilot Output:**
* Copilot generates SQL:
![alt text](images/img18.png)
```sql
CREATE SCHEMA Sales;

CREATE TABLE Sales.Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(255) NOT NULL,
    SupplierID INT,
```

### **Demo 5: Generate Test Cases from Visual Flows**

#### **Flowchart for Process Logic**

**Visual Outline of Logic**
- The flowchart serves as a clear visual representation of the business logic, making it easy to understand complex processes.

**Deriving Test Scenarios**
- By using the flowchart, Copilot can efficiently derive necessary test scenarios to ensure effective process validation.

**Well-Structured Test Cases**
- Unit and integration test cases are well-structured to cover various scenarios and edge cases for effective testing.

**Thorough Logic Testing**
- The application's logic is thoroughly tested through comprehensive unit and integration tests to ensure reliability.

**Integration Testing**
- Integration tests ensure that different components of the application work together seamlessly.


* Upload logic or decision flowchart.
* Copilot generates unit tests covering decision paths.
* Example: Login validation tests.

### **Demo 6: Parse Network Topology to Generate Config Scripts**

#### **Network Topology Diagram**

**Visual Representation**
- The network topology diagram provides a visual representation of the network setup, helping to understand connections and layout.

**Importance for Configuration**
- This diagram is crucial for generating configuration scripts, ensuring proper network setup and functionality.

**Tailored Configuration Scripts**
- Configuration scripts are customised to meet specific networking needs efficiently.

**Streamlined Network Setup**
- These scripts simplify and accelerate the network setup process, saving time and reducing errors.

**Environment-Specific Solutions**
- By focusing on specific environments, scripts ensure optimal performance and compatibility across networks.


* **Upload AWS/Azure network diagram**
![alt text](<images/aws web app network diagram.png>)

**Example Prompt:**
* Ask Copilot in your IDE

![alt text](images/img19.png)

**Copilot Output:**
* Copilot generates Terraform, Bicep, or CLI scripts:
![alt text](images/img20.png)
```hcl
resource "aws_lambda_function" "api_backend" {
    function_name = "backend"
    ...
}
```

### **Demo 7: Screen Design to Frontend Code**

#### **Wireframe/Mockup of a UI Screen**

**Foundation for Development**
- Wireframes and mockups are essential for outlining the user interface, guiding developers in the coding process.

**Design Elements**
- Mockups incorporate key design elements that illustrate layout, navigation, and user interaction for developers.

**Code Generation Basis**
- The initial wireframe serves as a baseline for code generation, ensuring alignment between design and functionality.

**Design to Code Alignment**
- The process ensures alignment between design vision and code execution, making sure visual elements function correctly.

* **Upload UI design (mockup, Figma export, sketch)**
![alt text](images/website.png)

**Example Prompt:**
* Ask Copilot in your IDE

![alt text](images/img21.png)

**Copilot Output:**
* Copilot outputs HTML/CSS code:
![alt text](images/img22.png)
```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accommodations</title>
    <link rel="stylesheet" href="styles.css">
</head>
```

![alt text](images/img23.png)

### **Demo 8: Modify Existing Code Based on a Diagram**  

#### **Updated Component Diagram**

**Component Diagram**
- The updated component diagram illustrates the changes made to the system architecture, ensuring clarity in design.

**Refactored Code**
- The refactored code improves readability and maintainability while aligning with the new structure of the component diagram.

**Updated Code Structure**
- The updated code structure ensures that all components are consistently implemented across the system, enhancing overall quality.

**Ensuring Consistency**
- Consistency in code structure is crucial for collaboration and future development, making the system easier to navigate.


* **Provide current code + updated diagram**
![alt text](images/ER-Order-edited.png)

**Example Prompt:**
* Ask Copilot in your IDE

![alt text](images/img24.png)

**Copilot Output:**
* Copilot generates patch/diff or new version reflecting changes.
![alt text](images/img25.png)

* Useful for updating schemas or API structure.

### **Demo 9: Hand-Drawn Diagram to Code**

#### **Code Scaffolding and Suggestions**

**Code Scaffolding**
- Copilot provides structured code scaffolding, which helps developers build applications efficiently and effectively.

**Implementation Suggestions**
- The suggestions generated by Copilot guide developers in implementing features, ensuring high-quality code output.

**Bridging Design and Code**
- The alignment of code output with hand-drawn diagrams bridges the gap between visual design and practical coding.


* **Upload a photo of a whiteboard sketch**
![alt text](images/architecture-drawing.jpg)


**Example Prompt:**
* Ask Copilot in your IDE

![alt text](images/img26.png)

**Copilot Output:**
* Copilot parses drawing → generates usable code or config.

![alt text](images/img27.png) 

* Example: Sketch of an API flow becomes Express.js handlers.

---


## **Conclusion**

**Simplifies Coding Process**
- GitHub Copilot Vision Revolutionizes Coding by converting visuals into code instantly, making development more efficient.


**Integration with IntelliJ**
- The integration of GitHub Copilot Vision with IntelliJ enhances productivity and streamlines the coding workflow for developers.

**Fostering Collaboration**
- GitHub Copilot Vision encourages collaboration between designers and developers, bridging the gap in the development process.



