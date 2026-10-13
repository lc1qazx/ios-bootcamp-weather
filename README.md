# Weather App Practice

A first draft for iOS Bootcamp Project 2, inspired by Apple Weather. The focus is splitting data and UI into small reusable pieces.

## Run

Open `WeatherApp.xcodeproj` in Xcode. Choose the `WeatherApp` scheme and an iPhone simulator, then press Run. You can also use `My Mac (Mac Catalyst)` for a desktop preview.

## In this draft

- Location, temperature, and weather conditions.
- Hourly forecast, ten-day forecast, and temperature bars.
- `Hour` and `Day` models, `ForEach`, and separate view files.
- A few sample cities to switch between.

The forecast is sample data, not live weather. No location or network access is needed.

## Where to edit

- `Forecast.swift`: cities and forecast data.
- `HourlyRowView.swift`: the hourly forecast style.
- `WeeklyRowView.swift`: the daily forecast style.
- `ContentView.swift`: layout and background.

Built with SwiftUI. iOS and Mac builds pass. Also launched and checked on an iPhone 17 simulator running iOS 27.

The initial draft was made with help from Codex and will be revised.

[Project 2 instructions](https://appteamcarolina.notion.site/Project-2-c8ec96c1ce738389b2560119b9e2424e)

## Screenshot

![iPhone simulator screenshot](screenshots/weather-iphone.png)
