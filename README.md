# Bookly App

Bookly is a Flutter application that allows users to browse and read books. The app is built using
the MVVM (Model-View-ViewModel) architecture and utilizes BLoC (Business Logic Component) for state
management.

## Features

- **Splash Screen**: An animated splash screen that transitions to the home screen.
- **Home Screen**: Displays a list of the newest books and allows users to navigate to book details.
- **Book Details**: Shows detailed information about a selected book, including title, author,
  rating, and actions.
- **Book Rating**: Displays the average rating and rating count for each book.
- **Custom Book Images**: Handles the display of book cover images with a fallback for missing
  images.
- **Navigation**: Uses `go_router` for navigation between screens.
- **Image Caching**: Uses `cached_network_image` to cache book cover images.
- **Book Preview**: Uses `url_launcher` to preview books.

## MVVM Structure

The project follows the MVVM architecture, which separates the application logic into distinct
layers:

- **data**: Represents the data and business logic of the application. In this project,
  the `BookModel` class is used to define the structure of a book object.
- **View**: The UI and its components that display the data to the user. Examples
  include `SplashView`, and `BookDetailsView`.
- **ViewModel**: Acts as a bridge between the Model and the View. It handles the presentation logic
  and prepares data for the View. In this project, the ViewModel is responsible for managing the
  state and providing data to the UI components.

## State Management

The project uses the BLoC (Business Logic Component) pattern for state management. BLoC helps to
separate business logic from the UI, making the code more modular and testable.

## Dependency Injection

The project uses `get_it` for dependency injection, solving dependencies by using the singleton
pattern.

## Error Handling

Failure cases are handled gracefully using custom error classes and the `dartz` package for better
error handling.

## API Requests

The project uses `dio` for making API requests.

## Fonts and Icons

The project uses `google_fonts` for custom fonts and `font_awesome_flutter` for icons.

## Getting Started

To get started with the project, follow these steps:

1. Clone the repository: `git clone https://github.com/yourusername/bookly_app.git` and navigate to
   the project directory: `cd bookly_app`
2. Install dependencies: `flutter pub get`
3. Run the app: `flutter run`

## Dependencies

- `flutter`
- `go_router`
- `flutter_svg`
- `flutter_bloc`
- `get_it`
- `cached_network_image`
- `url_launcher`
- `dartz`
- `dio`
- `google_fonts`
- `font_awesome_flutter`

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
