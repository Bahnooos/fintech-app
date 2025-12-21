# 🚀 Fintech & Crypto Tracker App (Flutter)

A modern, production-ready Fintech & Crypto application built with Flutter.
The app delivers real-time cryptocurrency market data, smart portfolio tracking,
secure crypto purchases via Stripe, and a fast offline-first experience.

Repository:
https://github.com/Bahnooos/fintech-app

---

## ✨ Highlights

- Real-time cryptocurrency market insights
- Portfolio tracking with analytics & P&L
- Buy crypto securely using Stripe payments
- Biometric authentication (Face ID / Fingerprint)
- Offline-first caching for better performance
- Clean, scalable architecture using BLoC / Cubit

---

## 🔥 Core Features

- Smooth onboarding experience for new users
- Secure authentication:
  - Email & Password
  - Biometric login (Face ID / Fingerprint)
- Home dashboard featuring:
  - Market overview
  - Trending cryptocurrencies
- Crypto market:
  - Search & filter
  - Infinite scrolling
- Portfolio management:
  - Total balance
  - Profit & Loss tracking
  - Asset allocation charts
- Fiat-to-crypto purchases with Stripe integration
- User profile & settings:
  - Light / Dark mode
  - Account management

---

## 🛠 Tech Stack

- Framework: Flutter (Dart)
- State Management: BLoC / Cubit
- Networking: Dio, Retrofit
- Backend: Firebase (Auth, Firestore)
- Payments: Stripe
- Local Storage: Hive, Shared Preferences
- Code Generation: Freezed, json_serializable

---

## 📁 Project Structure (High Level)

lib/
├── core/        # App-wide utilities, DI, networking, theming
└── features/    # Feature modules (auth, home, portfolio, etc.)

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (stable)
- Android Studio or VS Code with Flutter plugins
- Firebase project (Auth / Firestore)
- Stripe account (for payments)

---

### Local Setup

1. Clone the repository

git clone https://github.com/Bahnooos/fintech-app.git
cd fintech-app

2. Install dependencies

flutter pub get

3. Configure Firebase

- Add google-services.json (Android)
- Add GoogleService-Info.plist (iOS)
- Configure lib/firebase_options.dart if using FlutterFire CLI

4. (Optional) Environment variables

STRIPE_PUBLISHABLE_KEY=your_publishable_key
STRIPE_SECRET_KEY=your_secret_key

5. Run code generation (if needed)

flutter pub run build_runner build --delete-conflicting-outputs

6. Run the app

flutter run

---

## ⚙️ Configuration Notes

- Android Firebase config: app/google-services.json
- iOS Firebase config: GoogleService-Info.plist
- Firebase initialization: lib/firebase_options.dart

---

## 🤝 Contributing

Contributions are welcome.

1. Fork the repository
2. Create a feature branch:
   git checkout -b feat/your-feature
3. Make your changes and run tests/lints
4. Commit and push
5. Open a Pull Request with a clear description

---

## 👥 Contributors

- Bahnooos — Repository Owner / Maintainer
- Mohamed Osama Mohamed
- Habiba
- MuhammedElrashidy

---


## 📄 License

This project does not currently include a license file.
Consider adding a LICENSE file (e.g. MIT) if you plan to open-source it.

---

## 📬 Contact

For questions or support, please open an issue on GitHub:
https://github.com/Bahnooos/fintech-app

⭐ If you like this project, don’t forget to star the repository!
