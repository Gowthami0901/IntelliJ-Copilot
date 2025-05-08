# **Using GitHub Copilot Agent Mode in Codespaces**

## **Introduction**

GitHub Copilot Agent Mode in Codespaces is a powerful feature that allows you to go from issue creation to code implementation automatically using AI assistance. This guide provides a step-by-step approach to using Copilot Agent Mode in Codespaces to quickly develop features or fix bugs in your project.

---

## **Prerequisites**

1. Ensure you have a **GitHub account**.
2. Make sure **GitHub Codespaces** is enabled for your account or organization.
3. Confirm **GitHub Copilot** is activated (Copilot Agent Mode is in public preview).
4. Have an existing **GitHub repository** with a defined **issue**.

---

## **Step 1: Create a New Issue**

1. Go to your **GitHub repository**.
2. Navigate to the **Issues tab**.
3. Click **“New Issue”**.
4. Provide a clear title and description.
   ![alt text](images/img45.png)

   * Example: “Implement a Pie Chart to Display Market Share.”

5. Define clear instructions or requirements in the issue description.
6. Set the acceptance criteria for the implementation.

---

## **Step 2: Launch Copilot Agent Mode**

1. Open the created issue in your repository.
2. Click **“Code with Copilot Agent Mode”**.
   ![alt text](images/img46.png)
3. GitHub Codespaces will launch, automatically loading your project.
4. The Copilot Agent Mode chat window will open, with your issue as the initial context.
   ![alt text](images/img47.png)

   ![alt text](images/img48.png)
   
---

## **Step 3: Let Copilot Plan and Implement**

1. Copilot will start analyzing your project for existing files and data.
2. It will identify any missing dependencies and install them.
3. Copilot will:
    
   * Create necessary components (e.g., Pie Chart Component).
   * Set up services (e.g., Data Service for loading CSV).
   * Implement component logic (e.g., Displaying Pie Chart).
   * Integrate the new component into the UI (e.g., Dashboard).
   * Apply code formatting and linting if defined.

---

## **Step 4: Review and Test**

1. Review the automatically generated code.
2. Run your project in Codespaces:

   ```bash
   npm init -y
   ```
   ![alt text](images/img50.png)

3. Verify that the feature works as expected.
   ![alt text](images/img49.png)
---

## **Step 5: Make Adjustments (If Needed)**

1. If the implementation is incorrect, continue interacting with Copilot in Agent Mode.
2. You can also manually edit the code in Codespaces.
3. Create Copilot-instructions.md file
   ![alt text](images/img52.png)

---

## **Step 6: Finalize and Deploy**

1. Commit the changes directly from Codespaces.
2. Push the changes to your repository.
3. Close the issue, mentioning the commit ID or PR link.
   ![alt text](images/img51.png)


---

## Conclusion

GitHub Copilot Agent Mode in Codespaces can significantly accelerate your development process. With minimal input, you can go from an issue to a complete implementation. This guide should help you get started effectively.

