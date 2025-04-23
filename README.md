# Smart Nav Bar 🚀

[![Pub Version](https://img.shields.io/pub/v/smart_nav_bar)](https://pub.dev/packages/smart_nav_bar)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)

A beautifully animated and highly customizable bottom navigation bar for Flutter applications.

## ✨ Features

- 🎯 Smooth animations with scaling effects
- 🎨 5+ predefined styles + full customization
- 📦 Direct PageView integration
- 🛎 Badge support with counters
- 🖼 SVG icon support
- 📱 Fully responsive layout

## 🚀 Installation

```yaml
dependencies:
  smart_nav_bar: ^1.0.4+4


Then run:
```bash
flutter pub get
```


### 1. Default Style
Perfect for standard applications with clean aesthetics.

<img src="https://i.imgur.com/default_style.png" width="300" alt="Default Style Preview">

```dart
SmartBottomNav(
  style:  style: SmartNavStyle(
    defaultActiveColor: Colors.blue,
    defaultInactiveColor: Colors.grey,
    backgroundColor: Colors.white,
    borderRadius: 20,
    padding: EdgeInsets.all(12),
  // ..., 
  )
)

### 1. Neon Style
Vibrant neon colors with elastic animations.

<img src="https://i.imgur.com/default_style.png" width="300" alt="Default Style Preview">

```dart
SmartBottomNav(
  style: SmartNavStyle.neonStyle,
  // ...
)


## 🛠 Basic Usage

```dart
import 'package:smart_nav_bar/smart_nav_bar.dart';

SmartBottomNav(
  currentIndex: _currentIndex,
  items: [
    SmartNavItem(iconPath: 'assets/home.svg', label: 'Home'),
    SmartNavItem(iconPath: 'assets/search.svg', label: 'Search'),
    SmartNavItem(iconPath: 'assets/profile.svg', label: 'Profile'),
  ],
  onTap: (index) {
    setState(() => _currentIndex = index);
  },
)

```


### Add Badges
```dart
SmartNavItem(
  iconPath: 'assets/notifications.svg',
  label: 'Alerts',
  badge: BadgeNavItem(count: 3)
)

```


## 🤝 Contributing

Contributions are welcome! Please open an issue or PR on [GitHub](https://github.com/Halawany1/smart_nav_bar).

Halawany w yala bena

## 📜 License

MIT - See [LICENSE](LICENSE) for details.
