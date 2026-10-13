# Weather — 天气界面初版

iOS Bootcamp Project 2 的 SwiftUI 模块化练习。界面灵感来自 Apple Weather，全部为离线示例数据，不代表实际天气。

## 打开与运行

1. 用 Xcode 打开 `WeatherApp.xcodeproj`。
2. Scheme 选择 `WeatherApp`。
3. 选择一个已安装的 iPhone Simulator，点击 ▶ 或按 Command-R。
4. 没有模拟器时，可选择 `My Mac (Mac Catalyst)` 预览。

使用 Swift / SwiftUI，最低 iOS 17，无第三方依赖。模拟器无需付费开发者账号；真机签名尚未配置。

## 已实现

- 地点、温度、天气情况、高低温。
- 每小时预报与横向滚动。
- 十天天气列表、温度范围条。
- `Hour` / `Day` 数据结构与 `ForEach`。
- 多个独立 SwiftUI 组件、各自独立文件。
- Chapel Hill / Seattle / Tokyo 示例城市切换。
- 多色 SF Symbols、VoiceOver 标签。

本初版没有联网、定位、API key 或用户资料读取。

## 文件与学习顺序

1. `Hour.swift` / `Day.swift`：用 struct 描述一条天气数据；稳定 id 供 ForEach 使用。
2. `Forecast.swift`：示例数据与城市。修改这里，所有相关组件跟随改变。
3. `CurrentWeatherView.swift`：顶部天气。
4. `HourlyRowView.swift`：一小时的组件。
5. `HourlyForecastView.swift`：ForEach 根据数组生成一排小时组件。
6. `WeeklyRowView.swift` / `WeeklyForecastView.swift`：十天预报。
7. `TemperatureRangeView.swift`：将当天高低温映射到整段温度范围。
8. `ContentView.swift`：组装页面，State 保存所选城市。

建议先亲自改一条温度，再改一个 HourlyRowView 样式，观察所有小时组件如何一起变化。

## 检查记录

- Xcode 27：iOS Simulator SDK / arm64 构建通过。
- Mac Catalyst 构建通过，并实际启动。
- 实际验证切换 Seattle 后，顶部温度、天气文案、小时和每日温度同步更新。
- 修正了日期标签在较大字体下换行的问题。
- iPhone 模拟器运行及其截图：等待 runtime 下载完成。

## 初版来源与后续

本初版由 Codex 根据课程要求辅助编写。请先理解并继续修改，按照 club 对 AI 辅助的要求进行提交。

后续调整建议：配色、卡片间距、城市名称和预报数据。实时天气 API 不属于 Project 2 的当前最低要求。

[课程要求](https://appteamcarolina.notion.site/Project-2-c8ec96c1ce738389b2560119b9e2424e)
