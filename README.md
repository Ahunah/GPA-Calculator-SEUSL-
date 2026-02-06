# SEUSL ICT GPA Calculator

A modern, user-friendly **Flutter** application for SEUSL (South Eastern University of Sri Lanka) ICT students to calculate Semester / Year GPA using the university's 4.0 scale. The app includes pre-loaded subject lists for 1st–4th year, a clean dashboard-style UI, and dropdown-based grade selection to avoid input errors. ([GitHub][1])

---

## ✨ Features

* Clean, dashboard-style UI with curved header and grid navigation.
* Curriculum-based: pre-loaded core subjects for 1st–4th years (BICT).
* Accurate GPA math using SEUSL 4.0 scale.
* Dropdown grade selection to prevent input errors.
* Responsive layout for mobile & desktop Flutter targets. ([GitHub][1])

---

## 🧰 Tech Stack

* **Framework:** Flutter.
* **Language:** Dart.
* UI built using Material 3 + custom clippers. ([GitHub][1])

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

(Scale follows the project README.) ([GitHub][1])

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
```

(Actual file layout in the repository.) ([GitHub][1])

---

## 🖼 Screenshots

Add screenshots to `/assets/screenshots/` and show them here in the README. Example markdown for an image:

```markdown
![Main Dashboard](assets/screenshots/main_screen.png)
![GPA Calculator](assets/screenshots/calc_screen.png)
```

(Placeholder images already referenced in the repo README.) ([GitHub][1])

---

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

If you want, I can:

* Generate a ready-to-copy `README.md` file with that content (formatted for your repo).
* Add sample screenshots and update the `README.md` with those image links.
* Add a short contributor guidelines section or issues/PR template.

Which one do you want next?

[1]: https://github.com/Ahunah/GPA-Calculator-SEUSL-.git "GitHub - Ahunah/GPA-Calculator-SEUSL-"
