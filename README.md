# Top-Max-Task
#  Jobs Application – Flutter

 Overview

This project is a **Jobs Application** built using **Flutter 3.32.6**.
The goal of the app is to provide a clean and scalable structure for handling job listings, job details, search, and saved jobs.

The project follows a clean architecture with two main layers:

* **data** – Contains models, repositories, and data sources (API handling)
* **presentation** – Contains UI screens, widgets, and Cubits for state management

The app uses modern Flutter development tools:

* **Freezed** for generating immutable models and unions
* **Build Runner** for automatic code generation
* **Cubit (Bloc)** for predictable and lightweight state management

---

## Technologies Used

* **Flutter version:** 3.32.6
* **Dart:** Stable
* **State Management:** Cubit (Bloc)
* **Data Models:** Freezed
* **Code Generation:** Build Runner

---

##  Project Structure

```
lib/
  data/
    models/
    repository/
    datasources/

  presentation/
    cubit/
    screens/
    widgets/

  main.dart
```

This structure ensures easy scalability, separation of concerns, and clean organization.

---

##  Important Dependencies

dependencies in  `pubspec.yaml`:

```yaml
dependencies:
  freezed_annotation: ^2.4.1
  flutter_bloc: ^8.1.3

dev_dependencies:
  build_runner: ^2.4.8
  freezed: ^2.4.3
```

---

##  Running Code Generation (VERY IMPORTANT)

Since the project uses **Freezed** and **Build Runner**, anyone who clones or downloads the code **must** run the code generation command.

###  Required command after pulling the project:

```sh
dart run build_runner build --delete-conflicting-outputs
```

### Or run in watch mode during development:

```sh
dart run build_runner build --delete-conflicting-outputs
```

>  If you skip running these commands, the project will show errors because Freezed-generated files will be missing.

---

## How to Run the App

```sh
flutter pub get
flutter run
```

---

##  Notes

* Any changes to models or Cubits require running build runner again.
* The project structure is designed for clean, scalable development.
* The separation of **data** and **presentation** layers improves maintainability.

---

