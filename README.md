# Xenshop
This application is example implementation app for Xendit mobile store platform. This application built with [Flutter](https://flutter.dev/). Because this application implemented with modularization feature, so we need to concern changes from [xenshop modules](https://github.com/chandrabezzo/xenshop-module). [Core module](https://github.com/chandrabezzo/xenshop-module/tree/main/xenshop_core) need by this application and module to enable some magic when development this app. This application is built with the following features:
- Customers should be able to view the list of the products based on the [product](https://github.com/chandrabezzo/xenshop-module/tree/main/xenshop_product) categories
- Customers should be able to add the products to the shopping [cart](https://github.com/chandrabezzo/xenshop-module/tree/main/xenshop_cart)
- Customers should be able to view the products listed on the shopping [cart](https://github.com/chandrabezzo/xenshop-module/tree/main/xenshop_cart)
- Customers should be able to remove the products listed on the shopping [cart](https://github.com/chandrabezzo/xenshop-module/tree/main/xenshop_cart)
- Customers should be able to checkout shopping cart and continue their transaction to payment page

# Project Structure
```
|-- README.md
|-- analysis_options.yaml
|-- android
|   |-- app
|   |   |-- build.gradle
|   |   '-- src
|   |       |-- debug
|   |       |   '-- AndroidManifest.xml
|   |       |-- main
|   |       |   |-- AndroidManifest.xml
|   |       |   |-- kotlin
|   |       |   |   '-- com
|   |       |   |       '-- example
|   |       |   |           '-- xenshop
|   |       |   |               '-- MainActivity.kt
|   |       |   '-- res
|   |       |       |-- drawable
|   |       |       |   '-- launch_background.xml
|   |       |       |-- drawable-v21
|   |       |       |   '-- launch_background.xml
|   |       |       |-- mipmap-hdpi
|   |       |       |   |-- ic_launcher.png
|   |       |       |   '-- launcher_icon.png
|   |       |       |-- mipmap-mdpi
|   |       |       |   |-- ic_launcher.png
|   |       |       |   '-- launcher_icon.png
|   |       |       |-- mipmap-xhdpi
|   |       |       |   |-- ic_launcher.png
|   |       |       |   '-- launcher_icon.png
|   |       |       |-- mipmap-xxhdpi
|   |       |       |   |-- ic_launcher.png
|   |       |       |   '-- launcher_icon.png
|   |       |       |-- mipmap-xxxhdpi
|   |       |       |   |-- ic_launcher.png
|   |       |       |   '-- launcher_icon.png
|   |       |       |-- values
|   |       |       |   '-- styles.xml
|   |       |       '-- values-night
|   |       |           '-- styles.xml
|   |       |-- preview
|   |       |   '-- res
|   |       |       |-- drawable
|   |       |       |   '-- launch_background.xml
|   |       |       |-- mipmap-hdpi
|   |       |       |   '-- ic_launcher.png
|   |       |       |-- mipmap-mdpi
|   |       |       |   '-- ic_launcher.png
|   |       |       |-- mipmap-xhdpi
|   |       |       |   '-- ic_launcher.png
|   |       |       |-- mipmap-xxhdpi
|   |       |       |   '-- ic_launcher.png
|   |       |       |-- mipmap-xxxhdpi
|   |       |       |   '-- ic_launcher.png
|   |       |       '-- values
|   |       |           '-- styles.xml
|   |       |-- production
|   |       |   '-- res
|   |       |       |-- drawable
|   |       |       |   '-- launch_background.xml
|   |       |       |-- mipmap-hdpi
|   |       |       |   '-- ic_launcher.png
|   |       |       |-- mipmap-mdpi
|   |       |       |   '-- ic_launcher.png
|   |       |       |-- mipmap-xhdpi
|   |       |       |   '-- ic_launcher.png
|   |       |       |-- mipmap-xxhdpi
|   |       |       |   '-- ic_launcher.png
|   |       |       |-- mipmap-xxxhdpi
|   |       |       |   '-- ic_launcher.png
|   |       |       '-- values
|   |       |           '-- styles.xml
|   |       |-- profile
|   |       |   '-- AndroidManifest.xml
|   |       '-- staging
|   |           '-- res
|   |               |-- drawable
|   |               |   '-- launch_background.xml
|   |               |-- mipmap-hdpi
|   |               |   '-- ic_launcher.png
|   |               |-- mipmap-mdpi
|   |               |   '-- ic_launcher.png
|   |               |-- mipmap-xhdpi
|   |               |   '-- ic_launcher.png
|   |               |-- mipmap-xxhdpi
|   |               |   '-- ic_launcher.png
|   |               |-- mipmap-xxxhdpi
|   |               |   '-- ic_launcher.png
|   |               '-- values
|   |                   '-- styles.xml
|   |-- build.gradle
|   |-- gradle
|   |   '-- wrapper
|   |       '-- gradle-wrapper.properties
|   |-- gradle.properties
|   |-- gradlew
|   |-- gradlew.bat
|   |-- local.properties
|   '-- settings.gradle
|-- assets
|   '-- images
|       '-- xendit.jpeg
|-- ios
|   |-- Flutter
|   |   |-- AppFrameworkInfo.plist
|   |   |-- Debug.xcconfig
|   |   |-- Flutter.podspec
|   |   | (6 more...)
|   |   |-- productionRelease.xcconfig
|   |   |-- stagingDebug.xcconfig
|   |   '-- stagingRelease.xcconfig
|   |-- Podfile
|   |-- Podfile.lock
|   |-- Runner
|   |   |-- AppDelegate.swift
|   |   |-- Assets.xcassets
|   |   |   |-- AppIcon.appiconset
|   |   |   |   |-- Contents.json
|   |   |   |   |-- Icon-App-1024x1024@1x.png
|   |   |   |   |-- Icon-App-20x20@1x.png
|   |   |   |   | (10 more...)
|   |   |   |   |-- Icon-App-76x76@1x.png
|   |   |   |   |-- Icon-App-76x76@2x.png
|   |   |   |   '-- Icon-App-83.5x83.5@2x.png
|   |   |   |-- Contents.json
|   |   |   |-- LaunchImage.imageset
|   |   |   |   |-- Contents.json
|   |   |   |   |-- LaunchImage.png
|   |   |   |   |-- LaunchImage@2x.png
|   |   |   |   |-- LaunchImage@3x.png
|   |   |   |   '-- README.md
|   |   |   |-- previewAppIcon.appiconset
|   |   |   |   |-- Contents.json
|   |   |   |   |-- Icon-App-1024x1024@1x.png
|   |   |   |   |-- Icon-App-20x20@1x.png
|   |   |   |   | (10 more...)
|   |   |   |   |-- Icon-App-76x76@1x.png
|   |   |   |   |-- Icon-App-76x76@2x.png
|   |   |   |   '-- Icon-App-83.5x83.5@2x.png
|   |   |   |-- previewLaunchImage.imageset
|   |   |   |   |-- Contents.json
|   |   |   |   |-- LaunchImage.png
|   |   |   |   |-- LaunchImage@2x.png
|   |   |   |   |-- LaunchImage@3x.png
|   |   |   |   '-- README.md
|   |   |   |-- productionAppIcon.appiconset
|   |   |   |   |-- Contents.json
|   |   |   |   |-- Icon-App-1024x1024@1x.png
|   |   |   |   |-- Icon-App-20x20@1x.png
|   |   |   |   | (10 more...)
|   |   |   |   |-- Icon-App-76x76@1x.png
|   |   |   |   |-- Icon-App-76x76@2x.png
|   |   |   |   '-- Icon-App-83.5x83.5@2x.png
|   |   |   |-- productionLaunchImage.imageset
|   |   |   |   |-- Contents.json
|   |   |   |   |-- LaunchImage.png
|   |   |   |   |-- LaunchImage@2x.png
|   |   |   |   |-- LaunchImage@3x.png
|   |   |   |   '-- README.md
|   |   |   |-- stagingAppIcon.appiconset
|   |   |   |   |-- Contents.json
|   |   |   |   |-- Icon-App-1024x1024@1x.png
|   |   |   |   |-- Icon-App-20x20@1x.png
|   |   |   |   | (10 more...)
|   |   |   |   |-- Icon-App-76x76@1x.png
|   |   |   |   |-- Icon-App-76x76@2x.png
|   |   |   |   '-- Icon-App-83.5x83.5@2x.png
|   |   |   '-- stagingLaunchImage.imageset
|   |   |       |-- Contents.json
|   |   |       |-- LaunchImage.png
|   |   |       |-- LaunchImage@2x.png
|   |   |       |-- LaunchImage@3x.png
|   |   |       '-- README.md
|   |   |-- Base.lproj
|   |   |   |-- LaunchScreen.storyboard
|   |   |   '-- Main.storyboard
|   |   |-- GeneratedPluginRegistrant.h
|   |   |-- GeneratedPluginRegistrant.m
|   |   |-- Info.plist
|   |   |-- Runner-Bridging-Header.h
|   |   |-- previewLaunchScreen.storyboard
|   |   |-- productionLaunchScreen.storyboard
|   |   '-- stagingLaunchScreen.storyboard
|   |-- Runner.xcodeproj
|   |   |-- project.pbxproj
|   |   |-- project.xcworkspace
|   |   |   |-- contents.xcworkspacedata
|   |   |   '-- xcshareddata
|   |   |       |-- IDEWorkspaceChecks.plist
|   |   |       '-- WorkspaceSettings.xcsettings
|   |   '-- xcshareddata
|   |       '-- xcschemes
|   |           |-- Runner.xcscheme
|   |           |-- preview.xcscheme
|   |           |-- production.xcscheme
|   |           '-- staging.xcscheme
|   '-- Runner.xcworkspace
|       |-- contents.xcworkspacedata
|       '-- xcshareddata
|           |-- IDEWorkspaceChecks.plist
|           '-- WorkspaceSettings.xcsettings
|-- lib
|   |-- app
|   |   |-- app.dart
|   |   |-- app_binding.dart
|   |   |-- app_pages.dart
|   |   |-- consts
|   |   |   |-- assets
|   |   |   |   '-- images.dart
|   |   |   '-- endpoint.dart
|   |   |-- flavors.dart
|   |   |-- i18n
|   |   |   |-- locales
|   |   |   |   |-- en.dart
|   |   |   |   '-- id.dart
|   |   |   |-- strings.dart
|   |   |   '-- translation_service.dart
|   |   '-- styles
|   |       '-- styles.dart
|   |-- features
|   |   |-- cart
|   |   |   '-- cart_page.dart
|   |   |-- payment
|   |   |   |-- domain
|   |   |   |   '-- entities
|   |   |   |       '-- bank.dart
|   |   |   '-- presentation
|   |   |       |-- get
|   |   |       |   |-- payment_binding.dart
|   |   |       |   '-- payment_controller.dart
|   |   |       |-- pages
|   |   |       |   '-- payment_page.dart
|   |   |       '-- widgets
|   |   |           '-- bank_widget.dart
|   |   |-- product
|   |   |   |-- data
|   |   |   |   |-- datasources
|   |   |   |   |   |-- xenshop_product_datasource.dart
|   |   |   |   |   '-- xenshop_product_datasource_impl.dart
|   |   |   |   |-- mappers
|   |   |   |   |   |-- add_to_cart_mapper.dart
|   |   |   |   |   '-- product_add_to_cart_mapper.dart
|   |   |   |   |-- models
|   |   |   |   |   |-- add_to_cart_request_model.dart
|   |   |   |   |   '-- product_add_to_cart_request_model.dart
|   |   |   |   '-- repositories
|   |   |   |       '-- xenshop_product_repository_impl.dart
|   |   |   |-- domain
|   |   |   |   |-- entity
|   |   |   |   |   '-- xenshop_cart_product.dart
|   |   |   |   |-- repositories
|   |   |   |   |   '-- xenshop_product_repository.dart
|   |   |   |   '-- usecases
|   |   |   |       '-- add_to_cart.dart
|   |   |   |-- presentation
|   |   |   |   '-- get
|   |   |   |       |-- xenshop_product_binding.dart
|   |   |   |       '-- xenshop_product_controller.dart
|   |   |   '-- product_page.dart
|   |   '-- splash
|   |       '-- presentation
|   |           |-- get
|   |           |   |-- splash_binding.dart
|   |           |   '-- splash_controller.dart
|   |           '-- pages
|   |               '-- splash_page.dart
|   '-- main.dart
|-- pubspec.yaml
|-- pull_request_template.md
|-- test
|   '-- widget_test.dart
'-- web
    |-- favicon.png
    |-- icons
    |   |-- Icon-192.png
    |   |-- Icon-512.png
    |   |-- Icon-maskable-192.png
    |   '-- Icon-maskable-512.png
    |-- index.html
    '-- manifest.json
```

## Requirements
- Flutter SDK 2.5.3
- Android with Minimum SDK Version 16
- iOS with Minimum OS Version 10
- Chrome to running this application on web
- Flutter Plugin
- Dart Plugin

## Configuration
To run this application, you need setup [launch.json](https://github.com/chandrabezzo/xenshop/wiki/Launch.json) to apply the configuration easy. But, if you a Android Studio user, you still can use that IDE with different configuration. You need to add configuration at run configuration with same args `flavor` and `dart-define` as you can found in launch.json.

## Git Branch Strategy
This application implemented using [Trunk Based Development](https://trunkbaseddevelopment.com/) for Git Branch Strategy with `main` as `trunk`. We as engineer can't direct / force push to main, we need create a pull request (PR) with [format applied](https://github.com/chandrabezzo/xenshop/blob/main/pull_request_template.md). Another engineer will review then approve the PR. After PR approved with another engineer, we can merged the PR to main.

## Architechture
This project implemented with [Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html), further [developed](https://github.com/ResoCoder/flutter-tdd-clean-architecture-course) from the [Reso Coder TDD example](https://resocoder.com/flutter-clean-architecture-tdd). Click [here](https://github.com/chandrabezzo/xenshop/wiki/Clean-Architecture) to learn more about this project architecture.
