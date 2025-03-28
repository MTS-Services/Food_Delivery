# food_app
<p align="center">
  <img src="https://img.shields.io/github/stars/SinaSys/flutter_japanese_restaurant_app">
  <img src="https://img.shields.io/github/forks/SinaSys/flutter_japanese_restaurant_app">
  <img src="https://img.shields.io/github/actions/workflow/status/SinaSys/flutter_japanese_restaurant_app/main.yml?label=CI&logo=github">
  <img src="https://img.shields.io/github/v/release/SinaSys/flutter_japanese_restaurant_app?label=Release&logo=semantic-release">
  <img src="https://img.shields.io/github/last-commit/SinaSys/flutter_japanese_restaurant_app?label=Last%20commit">

## Screenshots (Light mode)

Onboding                    |   SignUp Screen          |  Country Screen |  LogIn screen 
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/MTS-Services/Food_Delivery/blob/main/screenshots/ImportedPhoto_1742982799699.jpg?raw=true)|![](https://github.com/MTS-Services/Food_Delivery/blob/main/screenshots/media_20250326_160253_8950749659373738947.jpg?raw=true)|![](https://github.com/MTS-Services/Food_Delivery/blob/main/screenshots/media_20250326_160253_6041161094151534765.jpg)|![](https://github.com/MTS-Services/Food_Delivery/blob/main/screenshots/media_20250326_160253_303141188652231579.jpg?raw=true)


## Screenshots (Light mode)

Home Screen         |   All Product View Screen           |  Order Card Screen       |  confirm order screen
:-------------------------:|:-------------------------:|:-------------------------:|:-------------------------:
![](https://github.com/MTS-Services/Food_Delivery/blob/main/screenshots/media_20250326_160253_6119407009071195624.jpg?raw=true)|![](https://github.com/MTS-Services/Food_Delivery/blob/main/screenshots/media_20250326_160253_8400753724536336574.jpg?raw=true)|![](https://github.com/MTS-Services/Food_Delivery/blob/main/screenshots/media_20250326_160253_5058362537592697515.jpg?raw=true)|![](https://github.com/MTS-Services/Food_Delivery/blob/main/screenshots/media_20250326_160303_2181217312802007082.jpg?raw=true)


## 🚀 Features :
```
• Bottom navigation animation when switch from one screen to another
• Fade animation for food items in detail screen and list views
• Delete single food item from cart by swipe item to right side
• Automatically delete single item from cart by set its value to zero
• Increase or Decrease quantity for each food item in cart screen
• Display food list on the food list screen
• Real-time calculation of total price in the cart screen
• Select quantity for each item on detail screen
• Filter foods by category
• State management with GetX 
```


## Directory Structure (GetX version)
```
📂lib
 │───main.dart  
 │───📂core  
 |   │──app_asset.dart
 |   │──app_color.dart
 |   │──app_data.dart
 |   │──app_icon.dart
 |   │──app_style.dart
 |   │──app_theme.dart
 |   └──app_extension.dart
 └───📂src
     │────📂model
     │    │──bottom_navigation_item.dart
     |    │──food.dart
     |    └──food_category.dart
     └────📂view
     |    │───📂screen
     |    |   |──cart_screen.dart
     |    |   |──favorite_screen.dart
     |    |   |──food_detail_screen.dart
     |    |   |──food_list_screen.dart
     |    |   |──home_screen.dart
     |    |   └──profile_screen.dart
     |    │───📂widget
     │    |   |──counter_button.dart
     │    |   |──custom_page_route.dart
     │    |   |──empty_widget.dart
     │    |   |──fade_animation.dart
     │    |   |──food_list_view.dart
     │    |   |──page_transition.dart
     |    |   └──scale_animation.dart
     └────📂controller
          └──food_controller.dart

