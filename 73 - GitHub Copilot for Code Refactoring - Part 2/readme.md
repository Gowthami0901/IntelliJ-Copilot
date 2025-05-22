# **GitHub Copilot for Code Refactoring - Part 2**

## **Refactoring Approaches Covered**

1. Guard Clauses (Early Returns)
2. Decomposing Conditions
3. Consolidating Duplicate Conditionals
4. Replacing Magic Numbers with Exceptions
5. Replacing Exceptions with Pre-checks
6. Refactoring Loops with Pipelines (e.g. `map`, `filter`)
7. Substituting Algorithms
8. Refactoring for Maintainability

---

### **Guard Clauses (Early Returns)**

Instead of nesting logic deeply with `if/else`, **guard clauses** return early to simplify flow.

**Original Code:**

```javascript
function getPaymentAmount(employee) {
  let result;
  if (employee.isSeparated) {
    result = 0;
  } else if (employee.isRetired) {
    result = 0;
  } else {
    result = calculatePayment();
  }
  return result;
}
```

**Refactored with Copilot (Guard Clause):**

```javascript
function getPaymentAmount(employee) {
  if (employee.isSeparated) return 0;
  if (employee.isRetired) return 0;
  return calculatePayment();
}
```

**Prompt to Copilot:**

> Refactor using guard clause pattern

---

### **Decomposing Conditions**

Break down complex conditions and expressions for better **readability**.

**Original Code:**

```javascript
if ((date.isAfter(summerStart) && date.isBefore(summerEnd)) && customerType === 'residential') {
  charge = summerRate * quantity;
} else {
  charge = regularRate * quantity;
}
```

**Refactored with Copilot (Decomposition):**

```javascript
function isSummer(date) {
  return date.isAfter(summerStart) && date.isBefore(summerEnd);
}

function isResidential(customerType) {
  return customerType === 'residential';
}

function calculateCharge(date, customerType, quantity) {
  if (isSummer(date) && isResidential(customerType)) {
    return summerRate * quantity;
  }
  return regularRate * quantity;
}
```

**Prompt to Copilot:**

> Make condition and expression more readable by decomposing

---

### **Consolidating Duplicate Conditionals**

Combine multiple conditions that result in the same outcome.

**Original Code:**

```javascript
function checkEmployeeStatus(status) {
  if (status === 'left') return 0;
  if (status === 'terminated') return 0;
  if (status === 'retired') return 0;
}
```

**Refactored:**

```javascript
function checkEmployeeStatus(status) {
  if (['left', 'terminated', 'retired'].includes(status)) return 0;
}
```

**Prompt to Copilot:**

> Refactor by consolidating duplicate conditionals

---

### **Replace Magic Numbers with Exceptions**

Replace unclear error codes (like `-23`) with exceptions.

**Original Code:**

```javascript
if (!data) return -23;
```

**Refactored with Exception Handling:**

```javascript
if (!data) throw new Error("Data not found");
```

**Prompt to Copilot:**

> Replace error codes with exception handling

---

### **Replace Exceptions with Pre-checks**

Avoid exceptions by checking preconditions.

**Original Code:**

```javascript
try {
  const data = fs.readFileSync(path);
} catch (e) {
  if (e.code === 'ENOENT') {
    return "File not found";
  }
}
```

**Refactored:**

```javascript
if (!fs.existsSync(path)) {
  return "File not found";
}
const data = fs.readFileSync(path);
```

**Prompt to Copilot:**

> Replace exception handling with a pre-check

---

### **Use Pipelines Instead of For-Loops**

Replace imperative loops with declarative pipelines.

**Original Code:**

```javascript
let result = [];
for (let i = 0; i < people.length; i++) {
  if (people[i].active) {
    result.push(people[i].name);
  }
}
```

**Refactored:**

```javascript
const result = people.filter(p => p.active).map(p => p.name);
```

**Prompt to Copilot:**

> Refactor loop using functional pipeline (filter + map)

---

### **Substitute Algorithms**

Replace verbose condition-matching logic with simpler constructs.

**Original Code:**

```javascript
let found = false;
for (let i = 0; i < names.length; i++) {
  if (names[i] === 'Alice' || names[i] === 'Bob' || names[i] === 'Carol') {
    found = true;
  }
}
```

**Refactored:**

```javascript
const validNames = ['Alice', 'Bob', 'Carol'];
const found = names.some(name => validNames.includes(name));
```

**Prompt to Copilot:**

> Replace condition-matching loop with substitute algorithm

---

### **Refactor for Maintainability**

Improve **long-term maintainability** by:

* Extracting constants
* Handling edge cases
* Improving naming

**Original:**

```javascript
function toFahrenheit(celsius) {
  return (celsius * 9/5) + 32;
}
```

**Refactored:**

```javascript
const CELSIUS_TO_FAHRENHEIT_MULTIPLIER = 9 / 5;
const CELSIUS_TO_FAHRENHEIT_OFFSET = 32;

function toFahrenheit(celsius) {
  return (celsius * CELSIUS_TO_FAHRENHEIT_MULTIPLIER) + CELSIUS_TO_FAHRENHEIT_OFFSET;
}
```

**Prompt to Copilot:**

> Refactor to improve maintainability with named constants

