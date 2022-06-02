# controller_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

------------- Folder Structure ---------------------

- Here is the core folder structure which flutter provides.

flutter-app/
|- android
|- build
|- ios
|- lib
|- test

- Here is the folder structure we have been using in this project.

lib/
|- bloc/
|- constants/
|- models/
|- ui/
|- widgets/
|- main.dart

- Now, lets dive into the lib folder which has the main code for the application.

1- bloc - All the application level blocs are defined in this directory with-in their respective files. This directory contains bloc file to handle Business logic.
2- constants - All the application level constants are defined in this directory with-in their respective files. This directory contains the constants for `theme`, `assestImages`, `api endpoints`, `iconsPath` and `strings`.
3- models - Contains model class that is used to generate JsonSerializable models.
4- ui - Contains all the ui of our project, contains sub directory for each screen.
5- widgets - Contains the common widgets for our applications. For example, Button, TextField etc.
6- main.dart - This is the starting point of the application. All the application level configurations are defined in this file i.e, theme, routes, title, orientation etc.


- This project is used below flutter packages
  syncfusion_flutter_sliders - This provide us the slider to select the time
  intl - This provide Number/Date format 