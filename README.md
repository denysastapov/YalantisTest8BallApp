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

This project is licensed under the MIT License: Copyright <2023>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
