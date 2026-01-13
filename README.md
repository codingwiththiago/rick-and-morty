# Rick & Morty: Clean Architecture & TDD

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue?logo=flutter)
![Architecture](https://img.shields.io/badge/Architecture-Clean-green)
![Testing](https://img.shields.io/badge/Testing-TDD-orange)

A robust, production-grade Flutter application demonstrating **Clean Architecture**, **SOLID Principles**, and **Test Driven Development (TDD)**.

This project serves as a "Senior Architect" blueprint for building scalable mobile applications, featuring advanced state management, functional error handling, and modular design.

## 🏗 Architecture Overview

The project follows a **Feature-First** variation of **Clean Architecture**, ensuring separation of concerns and maintainability.

### **The Layers**

1.  **Domain Layer (Inner Core)**
    * *Pure Dart* - No Flutter dependencies.
    * Contains **Entities** (Business Objects), **Repositories Interfaces** (Contracts), and **Use Cases** (Business Logic).
    * *Goal:* Define *what* the app does, regardless of the UI or Data source.

2.  **Data Layer (The Interface Adapter)**
    * Contains **Models** (JSON serialization), **Data Sources** (API/DB calls), and **Repository Implementations**.
    * *Goal:* Coordinate data retrieval and adapt it to the Domain format.

3.  **Presentation Layer (The UI)**
    * Contains **Blocs/Cubits** (State Management), **Pages**, and **Widgets**.
    * *Goal:* Render the state and capture user input.

### **Tech Stack**

* **State Management:** `flutter_bloc` (Bloc for complex flows, Cubit for simple states)
* **Dependency Injection:** `get_it` + `injectable`
* **Networking:** `dio` (with Interceptors)
* **Functional Programming:** `fpdart` (for `Either<Failure, Success>` error handling)
* **Data Classes:** `freezed` + `json_serializable`
* **Testing:** `mocktail` + `bloc_test`

## 📂 Folder Structure

```text
lib/
├── core/                  # Shared kernels (Failures, Network, Utils)
├── features/
│   └── characters/        # Feature: Character Management
│       ├── data/          # Models, Datasources, Repo Impl
│       ├── domain/        # Entities, Repo Interface, Use Cases
│       └── presentation/  # Blocs, Pages, Widgets
└── main.dart
```

## 🚀 Getting Started

### Prerequisites
* Flutter SDK (Latest Stable)
* Dart SDK

### Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/codingwiththiago/rick_and_morty.git
    cd rick_and_morty
    ```

2.  **Install dependencies:**
    ```bash
    flutter pub get
    ```

3.  **Run Code Generation:**
    This project uses `build_runner` for Freezed and Injectable.
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```

4.  **Run the App:**
    ```bash
    flutter run
    ```

5.  **Run Tests:**
    ```bash
    flutter test
    ```

## 📝 Development Roadmap (Study Plan)

This project is being built in phases to simulate a professional TDD workflow.

- [ ] **Phase 1: Domain & Core**
    - [x] Project Setup & Architecture Definition
    - [ ] Entities & Failures
    - [ ] UseCase TDD (Red-Green-Refactor)
- [ ] **Phase 2: Data Layer**
    - [ ] Models & JSON Serialization (Freezed)
    - [ ] API Client (Dio) & RemoteDataSource
    - [ ] Repository Implementation
- [ ] **Phase 3: Presentation (State)**
    - [ ] Bloc Implementation (Events & States)
    - [ ] Bloc Testing
- [ ] **Phase 4: UI & Integration**
    - [ ] Screen Implementation
    - [ ] Dependency Injection Wiring

## 🤝 Contributing

This is a personal study project, but feel free to open issues or PRs if you spot architectural improvements.

---
*Built with 💙 by Thiago Spindola*