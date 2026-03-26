# RentenPe Frontend

**RentenPe** is a premium, pixel-perfect Flutter application designed for modern rent management and financial services.

## Project Overview
This project implements a high-end user interface with a dark-themed aesthetic, focusing on a seamless user experience for:
- **Rent Management**: Tracking and paying rent with a dedicated, informative "Rent Due" card.
- **Financial Actions**: Quick access to payments, bank account management, and agreements.
- **User Rewards**: Exclusive membership tiers (Gold Member) with specific benefits and progress tracking.
- **Account Overview**: Comprehensive profile management, including rent scores and wallet balances.

## Key Features
- **Centralized Theme System**: A robust `ThemeConfigExtension` that manages all colors, typography, and font weights, accessible via `context.appTheme`.
- **Modular Architecture**: Organized into feature-based packages (`feature_home`, `feature_profile`, `feature_dashboard`) and a core shared layer (`app_core`).
- **Premium Design**: Utilizes custom gradients, glassmorphism effects, and consistent spacing for a state-of-the-art look.

## Technical Rules
- **Zero Inline Comments**: Code is self-documenting; conceptual comments are strictly avoided.
- **No Hardcoded Colors**: Every UI element fetches its styling from the theme extension.
- **File Modularity**: Adheres to a maximum of 2 classes per file to ensure maintainability.
- **Stateless/Stateful Extraction**: UI components are meticulously extracted into dedicated widget classes rather than helper methods.

## Getting Started
1. Ensure you have Flutter installed.
2. Run `flutter pub get` in the root and each package directory.
3. Launch the app using `flutter run` from `app_rentenpe`.
