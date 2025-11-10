# 🛍️ Ecommerce‑App  
*A modern iOS eCommerce app built with Swift & SwiftUI*

Welcome to **Ecommerce‑App**, a sample application by [Paul Vilau](https://github.com/paulvilau) that demonstrates building a mobile shopping experience using SwiftUI, MVVM architecture, and Apple’s new Observation framework.

---

## 🚀 Features

- Fully built with **SwiftUI**, declarative UI style  
- Clean **MVVM architecture** (Model‑View‑ViewModel)  
- Global cart management via `CartManager` using `@Observable` & `@Environment`  
- Product listing, product detail view, cart view & quantity updates  
- Dynamic product quantity calculations (`displayTotalCartQuantity`)  
- Responsive UI ready for light mode
- Student / learning‑project friendly — mock data, no backend required  

---

## 🏗️ Architecture Overview

### MVVM Layers
| Layer      | Description                                  | Example                          |
|------------|----------------------------------------------|----------------------------------|
| **Model**   | Data structs & business logic                 | `Product`, `ProductInCart`       |
| **ViewModel** | Holds and updates app state reactively       | `HomeViewModel`           |
| **View**    | SwiftUI views displaying data and UI logic   | `ProductDetailView`, `CartView` |

---

## 📱 Screenshots  
| Home Screen |

<img width="424" height="866" alt="Screenshot 2025-11-10 at 6 16 12 PM" src="https://github.com/user-attachments/assets/4c63f391-7865-4558-a369-5ddc2b447405" />

| Product Detail |

<img width="424" height="866" alt="Screenshot 2025-11-10 at 6 16 56 PM" src="https://github.com/user-attachments/assets/ee8a7a96-ba61-4185-9acd-86ae743694eb" />

| Cart View |

<img width="424" height="866" alt="Screenshot 2025-11-10 at 6 17 17 PM" src="https://github.com/user-attachments/assets/3961c84e-f5bc-46b7-b46a-1ed0d077c888" />



---

## 🧠 Technologies Used

- Swift 6.12  
- SwiftUI  
- Observation Framework (`@Observable`, `@Environment`)  
- Xcode 16.4  
- MVVM design pattern  
- Mock data services (local JSON / static arrays)  

---

## ⚙️ Installation

1. **Clone the repository**  
   ```bash
   git clone https://github.com/paulvilau/Ecommerce‑App.git
   cd Ecommerce‑App
   ```
2. **Open the project in Xcode**  
   ```bash
   open Ecommerce‑App.xcodeproj
   ```
3. **Select a target device** (iPhone simulator or your device)  
4. Press **⌘ + R** to build & run the app  

---

## 🧩 Project Structure
```
.
├── Ecommerce
│   ├── Assets.xcassets
│   ├── Client
│   │   ├── ProductsClient.swift
│   │   └── products.json
│   ├── Components
│   │   ├── BannerImageModifier.swift
│   │   ├── PaymentButton.swift
│   │   ├── PrimaryButtonStyle.swift
│   │   ├── ProductRow.swift
│   │   ├── SquareImageModifier.swift
│   │   └── TwoColumnGrid.swift
│   ├── EcommerceApp.swift
│   ├── Managers
│   │   ├── CartManager.swift
│   │   ├── FavoritesManager.swift
│   │   └── TabManager.swift
│   ├── Models
│   │   ├── Product.swift
│   │   ├── ProductFilter.swift
│   │   └── ProductInCart.swift
│   ├── Preview Content
│   ├── ViewModels
│   │   ├── HomeViewModel.swift
│   │   └── ProductGridViewModel.swift
│   └── Views
│       ├── CartView.swift
│       ├── FavoritesView.swift
│       ├── HomeView.swift
│       ├── ProductDetailView.swift
│       └── ProductGridView.swift
└── Ecommerce.xcodeproj
```

---


## 📄 License

This project is licensed under the **MIT License** — feel free to use, modify, and distribute.

---

## ✨ Author

**Paul Vilau**  
📧 Email: paulvilau@gmail.com 
🔗 [GitHub](https://github.com/paulvilau)  

