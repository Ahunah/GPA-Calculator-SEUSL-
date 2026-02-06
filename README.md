# SEUSL ICT GPA Calculator

A modern, user-friendly **Flutter** application for SEUSL (South Eastern University of Sri Lanka) ICT students to calculate Semester / Year GPA using the university's 4.0 scale. The app includes pre-loaded subject lists for 1st–4th year, a clean dashboard-style UI, and dropdown-based grade selection to avoid input errors.

---

## ✨ Features

* Clean, dashboard-style UI with curved header and grid navigation.
* Curriculum-based: pre-loaded core subjects for 1st–4th years (BICT).
* Accurate GPA math using SEUSL 4.0 scale.
* Dropdown grade selection to prevent input errors.
* Responsive layout for mobile & desktop Flutter targets. 

---

## 🧰 Tech Stack

* **Framework:** Flutter.
* **Language:** Dart.
* UI built using Material 3 + custom clippers.

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

(Scale follows the project README.) 

---

## 🚀 Quick Start — Run locally

1. **Clone the repo**

```bash
git clone https://github.com/Ahunah/GPA-Calculator-SEUSL-.git
cd GPA-Calculator-SEUSL-
```

2. **Get dependencies**

```bash
flutter pub get
```

3. **Run the app**

* On a connected device / emulator:

```bash
flutter run
```

* To run for a specific platform (example Android):

```bash
flutter run -d android
```

> Make sure you have Flutter installed and configured. See Flutter docs for platform setup if needed. ([GitHub][1])

---

## 📁 Project structure (high level)

```
/android        # Android platform files
/ios            # iOS platform files
/lib            # Dart source (UI, pages for each year, welcome/home screens)
/assets         # Images and icons
/web / linux / macos / windows / test
pubspec.yaml
README.md

---

## 🖼 Screenshots

```markdown
[Splash Screen](<img width="560" height="1177" alt="image" src="https://github.com/user-attachments/assets/924f3f01-bc93-4b2f-ac49-c0695610c6f2" />)

[Welcome Scrren](<img width="800" height="1177" alt="image" src="https://github.com/user-attachments/assets/4ee25b35-3ba0-4abf-8c29-187ca7a98793" />
)
[!st year Screen](<img width="546" height="1182" alt="image" src="https://github.com/user-attachments/assets/7d8af014-1bdf-4827-9542-f2cbebb31b2d" />)

[2nd year Screen](<img width="543" height="1178" alt="image" src="https://github.com/user-attachments/assets/af77394f-a338-4cca-98f0-2f37c0dce9be" />)

[3rd year Screen](<img width="547" height="1181" alt="image" src="https://github.com/user-attachments/assets/f5f47520-7029-4b4b-b1f8-5cdce05600b7" />)

[4th year Screen](<img width="548" height="1182" alt="image" src="https://github.com/user-attachments/assets/b907d660-bf19-46d5-8a3c-b58ac65c11e1" />)
```

## 🤝 Contributing

Contributions welcome:

1. Fork the repo.
2. Create a feature branch: `git checkout -b feature/your-feature`.
3. Commit changes: `git commit -m "Add some feature"`.
4. Push: `git push origin feature/your-feature`.
5. Open a Pull Request describing your changes.

Please keep UI/UX consistent and add tests for any logic changes (GPA calculation, grade mapping).

---

## 📝 License

This project is distributed under the **MIT License** — see `LICENSE` in the repository for details. ([GitHub][1])

---

## 📬 Contact

Repository owner: **Ahunah** — see the GitHub profile on the repository page for contact details and updates. ([GitHub][1])

---
