readme_content = """
# Flutter App with Home and Notifications Screens

This is a Flutter application built using the MVC architecture and Provider state management. The app consists of two main screens: a **Home Screen** and a **Notifications Screen**. JSON data is parsed from an API endpoint and displayed on the notifications screen. For enhanced performance.

## Features

- **Home Screen**: Initial landing page displaying static content (per design).
- **Notifications Screen**: Displays data parsed from a JSON endpoint.
- **Efficient Parsing**: Uses isolates to handle JSON parsing for optimal performance.
- **Provider State Management**: Manages state effectively across screens.
- **Testing**: Includes test cases to ensure code quality and reliability.

## Architecture

This project uses **MVC (Model-View-Controller)** architecture to maintain code modularity, and **Provider** is utilized for state management to ensure efficient data flow and responsiveness.

## Screenshots

Screenshots of the application can be found in the `screenshots/` folder.

## Prerequisites

- **Flutter**: Ensure that you have Flutter SDK installed. [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)
- **Figma Assets**: Ensure you have exported all assets from the Figma design and placed them in the `assets/` folder.

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/your-username/flutter-notification-app.git
cd flutter-notification-app
