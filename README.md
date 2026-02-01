# Weather App
A simple and dynamic weather forecasting application built with Flutter. This app allows users to search for a city and view its current weather conditions. The user interface dynamically changes its theme color to match the weather.

## Features

*   **City-based Weather Search**: Find real-time weather data for any city.
*   **Dynamic Theming**: The app's theme color adapts based on the current weather condition (e.g., orange for sunny, grey for cloudy).
*   **Detailed Forecast**: Displays the city name, last update time, current temperature, max/min temperatures, and a descriptive weather condition.
*   **State Management**: Utilizes BLoC (Cubit) for robust and predictable state management.
*   **Error Handling**: Gracefully handles various states including loading, no network connection, incorrect city name, or empty search input.
*   **Responsive UI**: Clean and intuitive user interface that provides a seamless experience.

## Technology Stack

*   **Framework**: Flutter
*   **Language**: Dart
*   **State Management**: `flutter_bloc` / `cubit`
*   **HTTP Client**: `dio` for network requests
*   **API**: [WeatherAPI.com](https://www.weatherapi.com/) for weather data

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

*   Flutter SDK installed.
*   A code editor like VS Code or Android Studio.
*   An API key from [WeatherAPI.com](https://www.weatherapi.com/).

### Installation

1.  **Clone the repository**
    ```sh
    git clone https://github.com/KhaledBahjat/weather_app.git
    ```

2.  **Navigate to the project directory**
    ```sh
    cd weather_app
    ```

3.  **Install dependencies**
    ```sh
    flutter pub get
    ```

4.  **Add your API Key**
    Open the `lib/services/weather_service.dart` file and replace the placeholder API key with your own.
    ```dart
    // lib/services/weather_service.dart

    class WeatherService {
      final Dio dio;
      final String baseUrl = 'http://api.weatherapi.com/v1';
      final String apiKey = 'YOUR_API_KEY_HERE'; // Replace this key
      // ...
    }
    ```

5.  **Run the application**
    ```sh
    flutter run
    ```

## Project Structure

The project is structured to separate concerns, making it scalable and maintainable.

```
lib/
├── cubits/           # Contains BLoC Cubits for state management
│   └── get_weather_cubit/
├── models/           # Data models (e.g., WeatherModel)
├── screens/          # Main application screens (UI)
├── services/         # Services for API calls and other logic
├── theme/            # Logic for dynamic theme generation
└── views/            # Reusable UI widgets and specific views
```

*   **`cubits`**: Manages the application's state. `GetWeatherCubit` handles the logic for fetching weather data and updating the UI accordingly.
*   **`models`**: Defines the data structure for the weather information received from the API.
*   **`screens`**: Contains the main widgets that represent the app's pages, such as the home screen and search screen.
*   **`services`**: Houses the `WeatherService` class, responsible for all communication with the WeatherAPI.
*   **`theme`**: Includes the `get_theme_color.dart` file, which maps weather conditions to specific `MaterialColor` themes.
*   **`views`**: Provides smaller, reusable UI components like the search bar and widgets for displaying error or empty states.
