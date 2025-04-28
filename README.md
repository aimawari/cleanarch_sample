# cleanarch_sample

A Clean Architecture + BLoC sample

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Notes:
### When to use Core utils:
- When you need general-purpose methods that are not tied to the UI or specific features.
- When you have reusable, low-level operations like validation, formatting, or data manipulation.
### When to use Shared Extensions:
- When you want to add custom methods to an existing class to make it easier to work with or more readable (e.g., adding a isValidEmail method to String).
- When you want to avoid writing repetitive code for operations on common types.
### When to use Shared Helpers:
- When you need small, reusable chunks of logic that help simplify UI or feature-specific code (e.g., creating widgets, handling layout).