# 📱 Fanni Application  

Fanni is a cross-platform mobile application built with **Flutter**. This project serves as the foundation for developing a scalable, maintainable, and production-ready application.  

---

## 🚀 Project Overview  
This repository contains the initial setup of a Flutter project with a clean and structured codebase, ready for further development. The application is designed with scalability in mind, following best practices in **state management, dependency injection, and modular architecture**.  

---

## 🛠️ Tech Stack  
- **Framework:** [Flutter](https://flutter.dev/) (cross-platform mobile SDK)  
- **Language:** Dart  
- **State Management:** ( Bloc / Cubit )  
- **Networking:** Dio / Retrofit (configurable)  
- **Localization:** Flutter Intl / JSON-based i18n [Arabic , English] 
- **Architecture:** Clean Architecture principles (Presentation, Domain, Data layers)  

---

## 📂 Project Structure  

lib/
├── core/ # Common utilities, constants, services
├── presentation/ # Feature-based modules
│ ├── auth/ # Example: Authentication feature
│ ├── home/ # Example: Home feature
├── l10n/ # Localization files
├── main.dart # Entry point


---

## ⚡ Getting Started  

### Prerequisites  
- Flutter SDK (latest stable version recommended)  
- Dart SDK  
- Android Studio / VS Code with Flutter extension  

<!-- 

flutter clean \
&& rm -rf ios/Pods ios/Podfile.lock \
&& flutter pub get \
&& cd ios && pod install && cd .. \
&& flutter pub get \
&& flutter pub run build_runner build --delete-conflicting-outputs \
&& clear

 -->
