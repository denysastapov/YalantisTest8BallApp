# YalantisTest8BallApp

![Simulator Screen Recording - iPhone 15 - 2023-12-04 at 11 31 02](https://github.com/denysastapov/YalantisTest8BallApp/assets/38051100/842eb9fe-fa63-4a5f-b29b-63acd6fb1cc4)

## Description
This is a simple mobile application that provides users with random answers by shaking their device. The app communicates with an external endpoint, EightBallAPI, to fetch random answers. In case of internet connection issues or request failure, the application falls back on a set of hardcoded answers.

## Features
Shake your device to get a random answer.
Main screen dynamically switches between displaying a call-to-shake text and the actual answer based on the application state.
Settings screen for users to customize and save their own set of hardcoded answers.
The app gracefully handles internet connection issues by using predefined fallback answers.
Intuitive and user-friendly design.

## Usage
Launch the application.
Shake your device to get a random answer.
Navigate to the Settings screen to customize and save your own set of answers.

## Installation
To run the application locally, follow these steps:

Clone the repository.
Open the project in Xcode.

Build and run the application on a simulator or physical device.

## Dependencies
Used Reachability for internet connection detection

## License
This project is licensed under the MIT License - see the [LICENSE](https://opensource.org/license/mit/) file for details.
