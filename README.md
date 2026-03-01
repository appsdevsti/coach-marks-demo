# Coach Marks Demo

A simple Flutter exploration project demonstrating the `tutorial_coach_mark` package implementation.

![Coach Marks Demo](assets/demo.gif)

## 🎯 Purpose

Ever wondered what those overlay tutorials are called when you first open an app? They're called **coach marks** - interactive step-by-step guides that highlight specific UI elements to help users understand how to use an application. This project explores implementing coach marks in Flutter using the `tutorial_coach_mark` package.

## 🛠️ Tech Stack

- **Flutter**: Cross-platform mobile development framework
- **Dart**: Programming language
- **tutorial_coach_mark**: ^1.3.3 - Interactive tutorial package

## 📱 Demo Features

The app includes a simple dashboard with coach mark demonstrations on:

- **Notification Button** - Basic coach mark example
- **Deals Banner** - Another target for tutorial overlay
- **Recommendation Cards** - Third coach mark target

## 🎯 Coach Marks Implementation

Basic implementation showing three coach mark targets:

1. **Notification Button** - Simple text overlay
2. **Deals Banner** - Basic highlighting
3. **Recommendation Cards** - Tutorial step demonstration

Each coach mark includes:
- Targeted overlay with spotlight
- Simple text content
- Skip functionality
- Basic transitions

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  tutorial_coach_mark: ^1.3.3
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (>= 3.10.7)
- Dart SDK
- Android Studio / VS Code with Flutter extensions

### Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd coach_marks
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

### Build for Production

```bash
# Android
flutter build apk

# iOS
flutter build ios
```

## 🏗️ Project Structure

```
lib/
├── main.dart                 # App entry point
├── consts/
│   └── color.dart           # App color constants
├── screen/
│   ├── dashboard_screen.dart # Main dashboard screen
│   └── widget/
│       ├── banner.dart      # Banner widget
│       ├── chip.dart        # Category chip widget
│       └── recommendation.dart # Recommendation card widget
```

## 🎨 Customization

### Adding New Coach Marks

To add new coach marks, modify the `_showCoachMarks()` method in `dashboard_screen.dart`:

```dart
TargetFocus(
  identify: 'yourTargetId',
  keyTarget: _yourGlobalKey,
  alignSkip: Alignment.topCenter,
  contents: [
    TargetContent(
      align: ContentAlign.bottom,
      builder: (context, controller) => Text(
        'Your tutorial text',
        style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
      ),
    ),
  ],
),
```

### Styling

- Colors: Modify `lib/consts/color.dart`
- Theme: Update `MaterialApp` theme in `main.dart`
- Components: Customize individual widgets in `screen/widget/`

## 🔧 Configuration

The coach marks automatically trigger when the app starts. To modify this behavior:

1. **Delay the tutorial**: Uncomment and adjust the `Future.delayed` in `initState()`
2. **Trigger on demand**: Call `_showCoachMarks()` from a button or other user action
3. **Show once**: Implement shared preferences to track if user has seen the tutorial

## Contributing

This is a learning project focused on exploring coach marks implementation. Feel free to fork and modify for your own needs.

## Credits

This README was written with assistance from [Windsurf](https://windsurf.ai/).

UI design inspired by [Dribbble](https://dribbble.com/shots/27131462-Smart-Recruitment-Hiring-Mobile-App)
