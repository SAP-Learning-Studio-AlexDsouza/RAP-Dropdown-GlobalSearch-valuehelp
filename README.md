# SAP RAP – Search, Value Help, Dropdown & Fuzzy Search

This repository demonstrates how to enhance an existing SAP RAP (RESTful ABAP Programming Model) application by adding advanced UI capabilities using CDS annotations.

The example is based on a Student RAP application.
<img width="2752" height="1498" alt="unnamed (2)" src="https://github.com/user-attachments/assets/5740d00b-6168-4038-b540-34fca1d94679" />

---

## 🚀 Features Implemented

- Value Help (Search Help) for Student ID  
- Dropdown for Status field  
- Global Search enablement  
- Fuzzy Search configuration  
- Filter behavior control (Single selection)  
- Annotation-based UI enhancement  

All functionality is implemented using CDS annotations.  
No custom UI coding is required.

---

## 🏗 Application Structure

### 1️⃣ Interface View – ZSLSI_STUDENT

- Root view entity  
- Selects data from student database table  
- Defines business fields:
  - StudentId  
  - CourseName  
  - EnrollDate  
  - StudentName  
  - Fees  
  - Currency  
  - Status  

---

### 2️⃣ Consumption View – ZSLSC_STUDENT_VIEW

- Used for UI exposure  
- Contains UI annotations  
- Enables search and value help  

---

### 3️⃣ Status Value Help View – ZSLSI_STATUS_VH

Provides dropdown values for the Status field.

Important annotations:

```abap
@ObjectModel.resultSet.sizeCategory: #XS
@Semantics.text: true
```

- `#XS` → Optimized for small datasets  
- `@Semantics.text` → Defines text field for the key  

---

## 🔎 Adding Value Help

Example:

```abap
@Consumption.valueHelpDefinition: [ 
  { 
    entity: {
      name: 'ZSLSI_STUDENID_VH',
      element: 'student_id'
    } 
  } 
]
StudentId;
```

Result:
- Enables search help popup  
- Allows users to select valid Student IDs  

---

## ⬇ Adding Dropdown for Status

```abap
@Consumption.valueHelpDefinition: [
 {
  entity: {
     name: 'ZSLS_I_STUD_STATUS',
     element: 'status'
  }
 }
]

@Consumption.filter:{ selectionType: #SINGLE }
```

Result:
- Status field behaves like a dropdown  
- Only single selection allowed in filter  

---

## 🔍 Enabling Global Search

```abap
@Search.searchable: true
```

Enables search functionality in the RAP application.

---

## ✨ Adding Fuzzy Search

```abap
@Search.defaultSearchElement: true
@Search.fuzzinessThreshold: 0.7
```

- Defines default searchable field  
- 0.7 threshold allows 70% similarity match  
- Supports minor spelling mistakes in search  

---

## 🎯 Key Learning Points

- Implement CDS-based Value Help  
- Configure dropdown using annotations  
- Enable search and fuzzy search  
- Enhance RAP apps without UI modifications  
- Use annotation-driven development effectively  

---

## 🧑‍💻 Technologies Used

- ABAP RAP (RESTful Application Programming Model)  
- Core Data Services (CDS)  
- SAP Fiori Elements  
- Annotation-based UI modeling  

---

## 📺 Video Tutorial

Full explanation available on YouTube:  
SAP Learning Studio

---

## 🤝 Support

If you have questions or suggestions:

- Open an issue in this repository  
- Comment on the YouTube video  : https://www.youtube.com/watch?v=cqs4sGQnM0Y

---

⭐ If you found this helpful, consider giving this repository a star.
