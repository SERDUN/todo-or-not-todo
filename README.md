# TODO or not TODO

App for creating, managing, and prioritizing tasks.

## Description

This project was implemented using clean architecture with three classic layers. The state management is handled using BLOC for the presenter layer. Logic is presented in use cases, and all low-level work is managed in the data layer.

## Getting Started

1. **Prerequisites:**
    - Ensure you have Flutter installed and configured on your development machine. Refer to the official documentation for setup instructions: [https://docs.flutter.dev/](https://docs.flutter.dev/)

2. **Clone the repository:**
   ```bash
   git clone https://github.com/SERDUN/todo-or-not-todo.git
   ```

3. **Install dependencies:**
   ```bash
   cd todo-or-not-todo
   flutter pub get
   ```

## Project Structure

The project adheres to a clean architecture pattern, typically organized as follows:

```
├── lib
│   ├── app
│   │   ├── app.dart
│   │   ├── route
│   │   └── view
│   │       └── app.dart
│   ├── bootstrap.dart
│   ├── di
│   ├── extensions
│   ├── features
│   │   ├── auth
│   │   ├── main
│   │   ├── profile
│   │   └── tasks
│   │       ├── feature
│   │       │   ├── add
│   │       │   ├── details
│   │       │   └── list
│   │       ├── tasks.dart
│   │       └── widgets
│   ├── l10n
├── packages
│   ├── data
│   │   ├── lib
│   │   │   ├── data.dart
│   │   │   ├── datasources
│   │   │   ├── di
│   │   │   ├── dtos
│   │   │   └── repositories
│   └── domain
│       ├── lib
│       │   ├── di
│       │   ├── models
│       │   ├── repositories
│       │   └── usecases
```

## API Integration

The backend for the TODO or not TODO project is available at: [TODO or not TODO Backend](https://github.com/SERDUN/todo-or-not-todo-backend)

1. **API Client Setup:**
    - Create a dedicated class within the `packages/data/lib/datasources` directory to handle API communication.

    ```dart
    // packages/data/lib/datasources/todo_api_client.dart
    import 'package:http/http.dart' as http;

    class TodoApiClient {
      final String baseUrl;
      final http.Client httpClient;

      TodoApiClient({required this.baseUrl, required this.httpClient});

      Future<http.Response> fetchTasks() async {
        final response = await httpClient.get(Uri.parse('$baseUrl/tasks'));
        if (response.statusCode != 200) {
          throw Exception('Failed to load tasks');
        }
        return response;
      }

      // Add other API methods as needed
    }
    ```

2. **Dependency Injection:**
    - Utilize dependency injection to provide the API client throughout the application.

    ```dart
    // packages/data/lib/di/data_module.dart
    import 'package:get_it/get_it.dart';
    import 'todo_api_client.dart';
    import 'package:http/http.dart' as http;

    final GetIt getIt = GetIt.instance;

    void setup() {
      getIt.registerLazySingleton<TodoApiClient>(() => TodoApiClient(
          baseUrl: 'https://your-api-url.com',
          httpClient: http.Client()));
    }
    ```

3. **Repository Integration:**
    - Implement methods in the repository to interact with the API client.

    ```dart
    // packages/data/lib/repositories/todo_repository.dart
    import 'package:data/datasources/todo_api_client.dart';

    class TodoRepository {
      final TodoApiClient apiClient;

      TodoRepository(this.apiClient);

      Future<List<Task>> getTasks() async {
        final response = await apiClient.fetchTasks();
        // Parse response and return tasks
      }

      // Add other repository methods as needed
    }
    ```

4. **Domain Layer:**
    - Update the domain layer to include use cases that interact with the repository.

    ```dart
    // packages/domain/lib/usecases/get_tasks.dart
    import 'package:data/repositories/todo_repository.dart';

    class GetTasks {
      final TodoRepository repository;

      GetTasks(this.repository);

      Future<List<Task>> call() async {
        return await repository.getTasks();
      }
    }
    ```

## Table Navigation

1. **Data Model:**
    - Define a data model class (e.g., `Task`, `User`) in `packages/domain/lib/models` to represent the data displayed in the table.

2. **Table Widget:**
    - Create a reusable `DataTable` widget that renders the table structure and populates it with data from the domain layer.
    - Use a state management solution (e.g., BLoC) to manage the table data and handle updates.

3. **Navigation:**
    - Implement navigation logic using a router (e.g., PageRouteBuilder, Navigator) to navigate between screens.
    - When a table row is tapped, trigger navigation to a detail screen that displays more information about the selected item.

## Running the App

1. Connect your device or launch an emulator.
2. Run the app from the command line:
   ```bash
   flutter run
   ```