
# Flutter Installation

* [Install Flutter](https://flutter.dev/get-started/)
* [Flutter documentation](https://docs.flutter.dev/)
* [Development wiki](https://github.com/flutter/flutter/wiki)
* [Contributing to Flutter](https://github.com/flutter/flutter/blob/master/CONTRIBUTING.md)

For announcements about new releases, follow the
[flutter-announce@googlegroups.com](https://groups.google.com/forum/#!forum/flutter-announce)
mailing list. Our documentation also tracks [breaking
changes](https://docs.flutter.dev/release/breaking-changes) across releases.

## Terms of service

The Flutter tool may occasionally download resources from Google servers. By
downloading or using the Flutter SDK, you agree to the Google Terms of Service:
https://policies.google.com/terms

For example, when installed from GitHub (as opposed to from a prepackaged
archive), the Flutter tool will download the Dart SDK from Google servers
immediately when first run, as it is used to execute the `flutter` tool itself.
This will also occur when Flutter is upgraded (e.g. by running the `flutter
upgrade` command).

## Setup In your local enviroment 

**Step 1:**

Download or clone this repo by using the link below:

```
https://github.com/MehtaPavan/GoCare.git
```

**Step 2:**

Go to project root and execute the following command in console to get the required dependencies: 

```
flutter pub get 
```



# GO CARE

This app is created using flutter technology which is based on healthcare facilities. 

As we go to home screen there are given common medical issues which a human faces and provided with remedies & animated video clips which help user understand better about the particular medical issue.


Next is Emergency call services which provides almost all important Emergency contacts which can be helpful to user if he is not aware of it/them using flutter_phone_direct_caller dependency.

Next is Nearby Hospital which provides the list & direction of all nearby Hospitals available around user's current location using google_map flutter dependency.

Last is Blog Section which provides different blogs sites for first aid services.

## Folder Structure

Following tree depicts the folder structure for the `lib` folder.
 ```
├── lib
│   ├── config
|   |   ├── palette.dart  
|   |   ├── style.dart 
│   ├── data
|   |   ├── data.dart     
│   ├── screens
|   |   ├── app_bar.dart
|   |   ├── asthama_det.dart
|   |   ├── bleed_det.dart
|   |   ├── bottom_nav_screen.dart
|   |   ├── export.dart
|   |   ├── eye_det.dart
|   |   ├── head_det.dart
|   |   ├── heart_det.dart
|   |   ├── hypo_det.dart
|   |   ├── item_image.dart
|   |   ├── m.dart
|   |   ├── map.dart
|   |   ├── map_utils.dart
|   |   ├── screen.dart
|   |   ├── skin_det.dart
|   |   ├── stats_screen.dart
|   |   ├── stings.dart
│   ├── widgets             
|   |   ├── custom_app_bar.dart
|   |   ├── emgcall.dart
|   |   ├── widgets.dart
|   |   ├── ...
│   ├── call.dart
│   ├── main.dart
```




## Badges





## Color Reference

| Color             | Hex                                                                |
| ----------------- | ------------------------------------------------------------------ |
| blue | #70a2d4
| White |#FDFEFE 
| Red | #E74C3C
| Turquoise | #16A085 

## Screenshots

![ss1](./assets/images/1.jpeg)
![ss2](./assets/images/2.jpeg)
![ss3](./assets/images/3.jpeg)
![ss4](./assets/images/4.jpeg)

## Contributing

Contributions are always welcome!

[GoCare Demo Video Link](https://drive.google.com/file/d/1RAcaCrdQoq0-g2Ett3olNsbrTp9Ngfo3/view)
