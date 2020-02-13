# Implementation Report:

In this task I tried to demonstrate the use of Flutter platform to develop a cross platform application 
that reflects the wireframe and documentations provided.

Although the time was limited, I tried to focus on the structured programming using design patterns, some unit tests, etc. 

# Some highlights:
- Using Bloc Pattern
- Abstarction dependencies (networking)
- Dependency Injections (repositories, networking)
- Seperating UI components, logics, repositories, etc.
- Using of JsonSerialization and automatic deserialzing and mapping Json to Data Models
- Unit tests

# Things that could be done with more time:

## Optimization:
Using the benefit of caching, for optimization and reduction of network calls for loading pictures.

## UI Design
UI Design is based on Google Materials, platform specific designs for iOS - Android native UI could be done using PlatformWidgets

## Dependency Injections
Dependency Injections in this project has been done through constructors, as an alternative Inherited widgets could be used.

## Error Handlings
Error handling in this sample project is minimal, this could be improved to handle network / unexpected data issues.


* This project contains some files that will be generated in case of clean build please run below command in terminal:
flutter packages pub run build_runner build --delete-conflicting-outputs

* App has been tested on iPhone 11 Pro Max Simulator, Google Pixel 3XL, iPhone 7 device.