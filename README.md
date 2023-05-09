# TokTik App

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Clean Architecture Concepts

## Data Source

It is responsible for fetching the media data from the network or from local storage.

## Repository

The repository is responsible for orchestrating the flow of data between the data source and the domain layer. It is the single source of truth for the domain layer.

We don't want to work with the concrete implementation of our Data Source. The Repository receives the DataSource as a dependency.

The DataSource and Repository methods might be very similar, but the Repository is a security layer for the Domain Layer (UI).

### Benefits

We can change the Data Source, we can get the videos from the network, from local storage or any other source. Our User Interface doesn't care about the implementation details, we won't need to change anything related with the App UI logic.

## Folders Structure

We have the `Domain` folder in which we define the interfaces or abstract classes for the Repository and the DataSource.

In the `Infrastructure` (also named `Data` ) folder we have the concrete implementation of the Repository and the DataSource.

domain > datasources > video_post_datasource.dart

infraestructure > datasources > local_videodatasource_impl.dart

Flows:

1. UI > 2. Presentation > 3. Use Cases > 4. Repositories and Data Sources >5. The information returns to the UI
