# 🛠️ WP CLI Plugin Bundler

![MIT License](https://img.shields.io/badge/license-MIT-blue)
![Shell Script](https://img.shields.io/badge/built%20with-Bash-1f425f.svg)
![Dev Tool](https://img.shields.io/badge/type-Developer%20Utility-yellow)

A developer utility to automate WordPress plugin bundling, versioning, and optional minification.

---

## ✨ Features

- 🔁 Updates plugin header version automatically
- 📦 Creates a clean ZIP of your plugin folder
- 🧹 Minifies `.js` files using `terser` if available
- 🕓 Adds timestamp and consistent versioning

---

## 🚀 Usage

```bash
chmod +x bundle.sh
./bundle.sh
```

Make sure your plugin main file is named `plugin.php` (or update the script).

---

## 📂 Example Structure

```
your-plugin/
├── plugin.php
├── js/
│   └── script.js
└── bundle.sh
```

---

## 🧪 Requirements

- Bash shell (macOS, Linux, WSL, Git Bash on Windows)
- `terser` installed (via npm: `npm install -g terser`)
- `zip` installed

---

## 🪪 License

MIT — use, modify, or extend freely.

---

Made with ❤️ by [Brett Cuthbertson](https://github.com/physicsisrelativelycool)
