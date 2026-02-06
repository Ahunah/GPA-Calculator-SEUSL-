Ah, now I understand clearly — you want a **README for your GPA Calculator Flutter app** that is structured like your Band Beat App README **and the screenshots actually show correctly on GitHub**.

The key here is: **GitHub can only show images that are inside your repo or hosted online with a public URL**. Your previous project worked because the images were either uploaded to GitHub or hosted somewhere accessible. The `user-attachments` URLs you were using might not work in your new repo if they are not uploaded there.

Here’s how to fix it and a ready-to-use README template for your GPA app:

---

# SEUSL ICT GPA Calculator 🎓

*Semester/Year GPA Calculator for SEUSL ICT students*

## 📌 Project Overview

**GPA Calculator SEUSL** is a Flutter mobile application designed for ICT students at **South Eastern University of Sri Lanka (SEUSL)**.
It helps students calculate **semester/year GPA** based on the university’s **4.0 scale**, using pre-loaded subject lists for 1st–4th year. The app features a **clean dashboard-style UI** with dropdown-based grade selection to avoid input errors.

---

## 🎯 Objectives

* Calculate 1st–4th year GPA easily
* Provide a visual and interactive interface
* Avoid manual calculation mistakes
* Help students track academic progress
* Demonstrate Flutter UI & state management skills

---

## ⚙️ Features

* Pre-loaded core subjects for each academic year
* Dropdown selection for grades
* Automatic GPA calculation
* Year-wise color-coded UI (1st–4th year)
* Clean, mobile-friendly interface

---

## 🧰 Tech Stack

* **Framework:** Flutter
* **Language:** Dart
* **UI:** Material Design 3 + Custom Clipper
* **IDE:** VS Code / Android Studio

---

## 📋 GPA Scale Used

| Grade | GPV |
| ----: | :-: |
| A+, A | 4.0 |
|    A- | 3.7 |
|    B+ | 3.3 |
|     B | 3.0 |
|    B- | 2.7 |
|    C+ | 2.3 |
|     C | 2.0 |
|    C- | 1.7 |
|    D+ | 1.3 |
|     D | 1.0 |
|     E | 0.0 |

---

## 🚀 Installation & Setup

1. Clone the repository

```bash
git clone https://github.com/Ahunah/GPA-Calculator-SEUSL-.git
```

2. Open the project in **VS Code** or **Android Studio**

3. Get dependencies

```bash
flutter pub get
```

4. Run the app

```bash
flutter run
```

> Make sure Flutter is installed and configured on your system.

---

## 📸 Screenshots

**1st Year GPA**
<img width="548" height="1182" alt="image" src="https://github.com/user-attachments/assets/cef30365-5257-4e8f-b4ca-f8e8ee7884ce" />

**2nd Year GPA**

![2nd Year](assets/screenshots/second.png)

**3rd Year GPA**

![3rd Year](assets/screenshots/third.png)

**4th Year GPA**

![4th Year](assets/screenshots/forth.png)

> ✅ **Important:** Make sure all screenshots are stored in `assets/screenshots/` and committed to the repo. Paths are **case-sensitive**.

---

## 📂 Project Structure

```
gpa-calculator-seusl/
│
├── lib/
│   ├── first_year.dart
│   ├── second_year.dart
│   ├── third_year.dart
│   ├── forth_year.dart
│   └── main.dart
├── assets/
│   └── screenshots/
│       ├── first.png
│       ├── second.png
│       ├── third.png
│       └── forth.png
├── pubspec.yaml
└── README.md
```

---

## 🧪 Testing

* Tested on Android Emulator & physical devices
* Verified GPA calculations for all years
* Checked dropdown selection and UI responsiveness

---

## 🤝 Contribution

This project is individually developed by **Ahunah**.
Contributions, improvements, or bug fixes are welcome via pull requests.

---

## 📄 License

Distributed under the **MIT License**. See `LICENSE` for details.

---

## 📬 Contact

**Developer:** Ahunah
**GitHub:** [https://github.com/Ahunah](https://github.com/Ahunah)
**Project Link:** [https://github.com/Ahunah/GPA-Calculator-SEUSL-](https://github.com/Ahunah/GPA-Calculator-SEUSL-)

---




