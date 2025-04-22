# Smart Nav Bar 🚀

[![Pub Version](https://img.shields.io/pub/v/smart_nav_bar)](https://pub.dev/packages/smart_nav_bar)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)

A beautifully animated and highly customizable bottom navigation bar for Flutter applications with smooth animations and flexible styling options.


## ✨ Features

- **Smooth Animations**: Elegant scaling and color transitions
- **Full Customization**: 
  - Colors (active/inactive states)
  - Icon sizes
  - Animation curves
  - Corner radius
  - Padding/margins
- **SVG Support**: Vector icons out of the box
- **Flexible Configuration**: Adapts to any design system
- **Lightweight**: No unnecessary dependencies

## 🚀 Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  smart_nav_bar: ^1.0.1
```

Then run:
```bash
flutter pub get
```

## 🛠 Basic Usage

```dart
import 'package:smart_nav_bar/smart_nav_bar.dart';

SmartNavBar(
  currentIndex: _currentIndex,
  items: const [
    NavItem(iconPath: 'assets/home.svg', label: 'Home'),
    NavItem(iconPath: 'assets/search.svg', label: 'Search'),
    NavItem(iconPath: 'assets/profile.svg', label: 'Profile'),
  ],
  onTap: (index) => setState(() => _currentIndex = index),
)
```

## 🎨 Customization

### Basic Styling
```dart
SmartNavBar(
  style: SmartNavBarStyle(
    activeColor: Colors.blue,
    inactiveColor: Colors.grey,
    backgroundColor: Colors.white,
    borderRadius: 20,
    padding: EdgeInsets.all(12),
  // ...
)
```

### Advanced Options
```dart
SmartNavBar(
  animationConfig: AnimationConfig(
    curve: Curves.easeOutQuad,
    duration: Duration(milliseconds: 300),
  itemConfig: ItemConfig(
    iconSize: 24,
    labelStyle: TextStyle(fontWeight: FontWeight.w600)),
  // ...
)
```

## 📱 Screenshot

![Screenshot 2025-04-22 132808](https://github.com/user-attachments/assets/8aa5541e-9964-4ced-b3ac-7ec16270ec3a)


*Default and customized styles with badge support*

### How to add your screenshot:

1. **Add image file** to your project:
## 🔧 Advanced Features

### Add Badges
```dart
NavItem(
  iconPath: 'assets/notifications.svg',
  label: 'Alerts',  
  badge: BadgeConfig(
    count: 3,
    color: Colors.red,
  ),
)
```

### Custom Screen Builder
```dart
SmartNavBar.withScreens(
  currentIndex: _currentIndex,
  items: [
    NavItem(..., screen: HomeScreen()),
    NavItem(..., screen: SearchScreen()),
  ],
)
```

## 🤝 Contributing

Contributions are welcome! Please open an issue or PR on [GitHub](https://github.com/yourusername/smart_nav_bar).

## 📜 License

MIT - See [LICENSE](LICENSE) for details.
