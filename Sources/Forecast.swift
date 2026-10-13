import Foundation

/// 离线示例数据，不代表今天的真实天气，也不会读取位置或调用 API。
enum WeatherLocation: String, CaseIterable, Identifiable {
    case chapelHill = "Chapel Hill"
    case seattle = "Seattle"
    case tokyo = "Tokyo"

    var id: String { rawValue }
    var temperatureOffset: Int {
        switch self {
        case .chapelHill: 0
        case .seattle: -8
        case .tokyo: 3
        }
    }
    var condition: String { self == .seattle ? "Light Rain" : "Partly Cloudy" }
    var symbol: String { self == .seattle ? "cloud.drizzle.fill" : "cloud.sun.fill" }
}

struct Forecast {
    let location: WeatherLocation
    var temperature: Int { 22 + location.temperatureOffset }
    var high: Int { 25 + location.temperatureOffset }
    var low: Int { 14 + location.temperatureOffset }
    var condition: String { location.condition }
    var summary: String {
        location == .seattle ? "Light showers through the afternoon. A calmer evening ahead."
                            : "A little sunshine, a few passing clouds. Clear skies expected tonight."
    }

    var hours: [Hour] {
        let times = ["Now", "12 PM", "1 PM", "2 PM", "3 PM", "4 PM", "5 PM", "6 PM", "7 PM", "8 PM"]
        let temperatures = [22, 23, 24, 25, 24, 23, 22, 20, 18, 17]
        return times.enumerated().map { index, time in
            Hour(id: index, time: time,
                 symbol: location == .seattle ? "cloud.drizzle.fill" : (index > 6 ? "moon.stars.fill" : "cloud.sun.fill"),
                 temperature: temperatures[index] + location.temperatureOffset)
        }
    }

    var days: [Day] {
        let names = ["Today", "Wed", "Thu", "Fri", "Sat", "Sun", "Mon", "Tue", "Wed", "Thu"]
        let lows = [14, 15, 13, 12, 14, 16, 17, 16, 14, 13]
        let highs = [25, 26, 23, 21, 24, 27, 28, 25, 23, 22]
        let symbols = ["cloud.sun.fill", "sun.max.fill", "cloud.fill", "cloud.rain.fill", "cloud.sun.fill",
                       "sun.max.fill", "sun.max.fill", "cloud.sun.fill", "cloud.fill", "cloud.sun.fill"]
        return names.enumerated().map { index, name in
            Day(id: index, name: name, symbol: symbols[index],
                low: lows[index] + location.temperatureOffset,
                high: highs[index] + location.temperatureOffset)
        }
    }
}
