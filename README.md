# 🍴 SwiftFood-Journey

This repository tracks my journey of transforming the **SwiftFoodApp** (initially a console-based Java application) into a **full-fledged web application** using **Spring Boot**.  
I’ll be updating this file daily to document progress, ensure direction, and stay consistent.

---

## 🗓️ Day 1 (21 - 10 - 2025)

### ✅ Progress
- Created the **base Spring Boot project** in **Eclipse IDE**.  
- Set up the initial **Model**, **Controller**, and **View** components for the `Customer` entity.  
- Verified that data from the repository is being successfully passed to the JSP view.

### 📂 Files Created
#### 1. `Customer.java`
- Defined as a JPA `@Entity` with fields:
  - `customerId`
  - `customerName`
- Added getters, setters, constructors, and `toString()`.
- **Removed unnecessary `@Component` annotation** (since `@Entity` already manages it via JPA).

#### 2. `CustomerController.java`
- Annotated with `@Controller`.
- Injected the `CustomerRepo` to fetch all customer records.
- Created endpoint `/all-customers` mapped to a JSP view.
- Used `Model` to pass data to the JSP page.

#### 3. `DisplayAllCustomers.jsp`
- Implemented a JSP page using JSTL `<c:forEach>` to display all customers.
- Improved presentation with an HTML table layout for better readability.

### 🧠 Learnings & Fixes
- Realized that entities should **not** be autowired as beans.
- Practiced using `Model` to transfer data from the controller to the JSP.
- Gained a better understanding of how Spring Boot integrates with JSP and JSTL.

---
