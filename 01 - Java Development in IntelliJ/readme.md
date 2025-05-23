## **Supercharge Java Development with GitHub Copilot Custom Instructions in IntelliJ!**

Here’s a **step-by-step guide** for setting up **GitHub Copilot Custom Instructions** to tailor your Java code generation preferences.

## **Objective**

Ensure GitHub Copilot:

1. Adds `@Override` to all overridden methods.
2. Initializes loggers using `LoggerFactory.getLogger`.
3. Adds Javadoc, constructor, getter/setter methods by default.

---

## **Steps to Set Up Copilot Custom Instructions for Java**

### **Step 1: Create `.github` Directory**

* Navigate to the **root directory** of your project.

* **Right-click** on the root folder in the Project Explorer.

* Select **New → Directory** from the context menu.
  ![Create directory](../images/img1.jpg)

* Enter the folder name as:
  ![Directory name](../images/img2.jpg)

> ⚠️ Make sure to include the dot (`.`) at the beginning. This makes it a hidden directory in Unix-like systems.

### **Step 2: Create `copilot-instructions.md` File**

* Inside `.github`, create a file:
  ![Create file](../images/img3.jpg)

### **Step 3: Add Your Custom Instructions**

**Paste the following content inside the `copilot-instructions.md` file:**

```markdown
**Java Logging Instructions**
- Always use SLF4J for logging. Logger and LoggerFactory, and initialize the logger as 'private static final logger = LoggerFactory.getLogger(ClassName.class);'.

**Java Class Instructions**
- Add @Override to all overridden methods.
```

![Instruction example](../images/img4.jpg)

#### **Example Prompt:**

Ask Copilot in your IDE:
![Prompt example](../images/img5.jpg)

#### **Copilot Output:**

![Output example](../images/img6.jpg)

#### **Java Class Instructions**

Update the Java Class Instructions as shown below:
![Updated instructions](../images/img7.jpg)

---

### **Step 4: Use GitHub Copilot With These Instructions**

You don't need to reference the file manually every time. Once it's in the project, GitHub Copilot uses it automatically as context.

#### **Example Prompt:**

Ask Copilot in your IDE:

> “Create a Java class named `Booking` that implements a `Payment` interface.”

#### **Copilot Output:**

![Java class output](../images/img8.jpg)

```java
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import lombok.Getter;
import lombok.Setter;

/**
 * Represents a booking that implements payment functionality.
 */
@Getter
@Setter
public class Booking implements Payment {
    private static final Logger logger = LoggerFactory.getLogger(Booking.class);

    private String bookingId;
    private double amount;

    /**
     * Constructor to initialize all fields.
     *
     * @param bookingId the unique ID of the booking
     * @param amount    the payment amount for the booking
     */
    public Booking(String bookingId, double amount) {
        this.bookingId = bookingId;
        this.amount = amount;
    }

    /**
     * Processes the payment for the booking.
     */
    @Override
    public void processPayment() {
        logger.info("Processing payment of ${} for booking ID: {}", amount, bookingId);
    }
}
```

