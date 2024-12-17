# Flutter Bloc Auth Module

Loreum Ipsum

## Project Structure

The project follows a well-defined directory structure to keep your code organized and maintainable. Here's an overview of the key directories:

- **Src**: The main source code directory.

    - **Common**: Contains common files such as API endpoints, constants, exceptions, colors, screen sizes, and enums.

    - **Data**: Responsible for data handling.

        - **Datasource**: Data sources, such as API clients or databases.

        - **Model**: Data models that represent your application's data.

        - **Repository**: Data repositories, which abstract the data source.

    - **Domain**: Contains the core business logic.

        - **Entity**: Business entities or domain models.

        - **Repository**: Interfaces that define how data is accessed in the domain layer.

        - **Usecase**: Use cases that represent the application's business operations.

    - **Presentation**: Handles the user interface and interaction.

        - **Bloc**: BLoC classes responsible for managing the state of your application.

        - **Cubit**: Cubit classes for more lightweight state management.

        - **Page**: Flutter pages/screens.

        - **Widget**: Reusable UI components.

    - **Utilities**: Helper classes and utilities for the application.

- **Injection.dart**: Dependency injection setup using GetIt.

- **Main.dart**: The entry point of the Flutter application.
