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
  smart_nav_bar: ^1.0.4+6

Then run:
flutter pub get
```


🎨 Style Gallery

| Image             |  Style |
:-------------------------:|:-------------------------:
![22 04 2025_16 27 37_REC-ezgif com-effects](https://github.com/user-attachments/assets/14679377-19a1-4494-b178-d42587ed1610) | SmartNavStyle()
![23 04 2025_12 57 32_REC-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/d3502110-0707-4d1d-8316-2731bc454ec6) | SmartNavStyle.neonStyle
![23 04 2025_12 58 40_REC-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/962d1a00-7d0c-462b-92ce-a604a584a934) | SmartNavStyle.colorfulStyle
![23 04 2025_12 51 50_REC-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/4762e3f2-8b03-483f-bdf2-e54f94070932) | SmartNavStyle.minimalStyle
## 🛠 Basic Usage

```dart
import 'package:smart_nav_bar/smart_nav_bar.dart';

SmartBottomNav(
  currentIndex: _currentIndex,
  items: [
    SmartNavItem(iconPath: 'assets/home.svg', label: 'Home' //label is optional),
    SmartNavItem(iconPath: 'assets/search.svg', label: 'Search'),
    SmartNavItem(iconPath: 'assets/profile.svg', label: 'Profile'),
  ],
  onTap: (index) {
    setState(() => _currentIndex = index);
  },
)

```
## 🛠 Customize Styles with copyWith

## 🛠 Customize Styles with copyWith

```dart
 SmartNavStyle.neonStyle.copyWith(
  backgroundColor: Colors.deepPurple,
  borderColor: Colors.purpleAccent,
  defaultActiveColor: Colors.amber,
  showLabel: false,
  //
);
```

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
