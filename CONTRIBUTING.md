# Contributing Guide

This project follows strict engineering standards to ensure scalability and maintainability.

## 1. Commit Convention

We follow the **Conventional Commits** specification. This ensures a clean history and allows for automated changelog generation.

### **Format**
```text
<type>(<scope>): <description>
```

### **Types**
| Type | Description |
| :--- | :--- |
| `feat` | A new feature (e.g., adding a usecase, widget, or logic). |
| `fix` | A bug fix. |
| `test` | Adding missing tests or correcting existing tests. |
| `refactor` | A code change that neither fixes a bug nor adds a feature. |
| `chore` | Build process, dependency updates, or generated code. |
| `docs` | Documentation only changes. |
| `style` | Formatting, missing semi-colons, etc (no code change). |

### **Scopes**
* **`domain`**: Entities, UseCases, Repository Interfaces.
* **`data`**: Models, DataSources, Repository Implementations.
* **`presentation`**: BLoCs, Cubits, Pages, Widgets.
* **`core`**: generic utilities, failures, network modules.
* **`di`**: Dependency injection setup.

---

## 2. The TDD Workflow

This project is built using **Test Driven Development**. Commits should ideally reflect the cycle:

1.  **Red:** Write the test first. It must fail.
    * *Commit:* `test(scope): add failing test for X` (Optional)
2.  **Green:** Write the minimum code to pass the test.
    * *Commit:* `feat(scope): implement X`
3.  **Refactor:** Clean up the code without changing behavior.
    * *Commit:* `refactor(scope): optimize X implementation`