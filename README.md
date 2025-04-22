# Smart Nav Bar 🚀

[![Pub Version](https://img.shields.io/pub/v/smart_nav_bar)](https://pub.dev/packages/smart_nav_bar)
[![License: MIT](https://img.shields.io/badge/license-MIT-purple.svg)](https://opensource.org/licenses/MIT)

A beautifully animated and highly customizable bottom navigation bar for Flutter applications with smooth animations, badge support, and flexible screen integration.

---

## ✨ Features

- 🎯 **Smooth Animations** – Scaling effects and color transitions for a polished feel
- 🎨 **Customizable Design**
  - Active/inactive colors
  - Icon sizes and scale factor
  - Margins and paddings
  - Background color, border, and shadow
  - Optional labels with custom styles
- 📦 **Screen Support** – Integrate directly with `PageView` for tabbed navigation
- 🛎 **Badge Support** – Show notification counts or indicators on icons
- 🖼 **SVG Icon Support** – Use `.svg` icons with color filtering
- 📱 **Responsive Layout** – Works across various screen sizes and orientations

---

## 🚀 Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  smart_nav_bar: ^1.0.3
```

Then run:
```bash
flutter pub get
```

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

## 🎨 Customization

### Basic Styling
```dart
SmartBottomNav(
  style: SmartNavStyle(
    defaultActiveColor: Colors.blue,
    defaultInactiveColor: Colors.grey,
    backgroundColor: Colors.white,
    borderRadius: 20,
    padding: EdgeInsets.all(12),
  // ...
)
```
## 📱 Screenshot

![22 04 2025_16 27 37_REC-ezgif com-effects](https://github.com/user-attachments/assets/88d538a8-65fc-492b-a83e-0f84c64259b6)

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
