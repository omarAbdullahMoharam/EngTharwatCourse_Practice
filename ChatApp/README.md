# ChatApp

**ChatApp** is a real-time messaging application built with Flutter. The app allows users to communicate instantly through a clean and responsive chat interface.

## Features

- **Real-time messaging**: Chat with friends in real time.
- **User Authentication**: Secure login and registration via Firebase.

## Project Structure

lib/
├── components/        # Reusable UI components
├── models/            # Data models for chat, user, etc.
├── pages/             # Screens (login, chat, etc.)
├── services/          # Firebase services, authentication, database
├── constants.dart     # App-wide constants (colors, styles, etc.)
├── firebase_options.dart  # Firebase configuration
├── main.dart          # Main entry point of the app

assets/
├── fonts/             # Custom fonts
├── images/            # Image assets


## Installation

1. **Clone the repository:**

```console
git clone https://github.com/your-username/chatapp.git

```
```console
   cd chatapp
```
Install dependencies:


```console
flutter pub get
```
Set up Firebase:

Add your Firebase configuration (google-services.json for Android, GoogleService-Info.plist for iOS) to the project.
Run the app:
```console
flutter run
```
## Screenshots
Include screenshots of the app in action (e.g., login page , register page, chat interface).

Login Screen
Register Screen
Chat Screen

## Technologies Used
Flutter: For building a responsive and interactive UI.
Firebase Authentication: To handle user login and registration.
Cloud Firestore: For storing chat messages.


Contributing
Contributions are welcome! Here's how you can contribute:

Fork the repository.
Create a feature branch (git checkout -b feature-branch).
Commit your changes (git commit -am 'Add new feature').
Push to your branch (git push origin feature-branch).
Create a pull request.

Contact
For any inquiries, reach out via:

[Email]:(mailto:omarmoharam790@gmail.com)