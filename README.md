# 天气 App 练习

iOS Bootcamp Project 2 的初稿，界面参考 Apple Weather。先练习把数据和界面拆成小组件，后面继续调整。

## 怎么运行

用 Xcode 打开 `WeatherApp.xcodeproj`，选择 `WeatherApp` 和一个 iPhone 模拟器，点击 ▶。模拟器还没下载好时，可以选择 `My Mac (Mac Catalyst)` 先看界面。

## 现在有什么

- 地点、温度、天气情况。
- 小时预报、10 天天气和温度范围条。
- `Hour` / `Day` 数据结构、`ForEach` 和多个独立组件。
- 可以切换几个示例城市。

使用固定的示例数据，不是真实天气，不需要定位或网络权限。

## 后面从哪里改

- `Forecast.swift`：城市和天气数据。
- `HourlyRowView.swift`：每小时天气的样式。
- `WeeklyRowView.swift`：每天的天气样式。
- `ContentView.swift`：整体布局和背景。

使用 SwiftUI，iOS / Mac 构建已通过；iPhone 模拟器检查还在等待运行环境下载。

初稿使用 Codex 协助，后续会继续学习和修改。

[Project 2 说明](https://appteamcarolina.notion.site/Project-2-c8ec96c1ce738389b2560119b9e2424e)
