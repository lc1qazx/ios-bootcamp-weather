import Foundation

struct Forecast {
    let location = "Chapel Hill"
    let temperature = 22
    let condition = "Partly Cloudy"
    let high = 25
    let low = 14

    let hours = [
        Hour(id: 0, time: "Now", symbol: "cloud.sun.fill", temperature: 22),
        Hour(id: 1, time: "12 PM", symbol: "cloud.sun.fill", temperature: 23),
        Hour(id: 2, time: "1 PM", symbol: "sun.max.fill", temperature: 24),
        Hour(id: 3, time: "2 PM", symbol: "sun.max.fill", temperature: 25),
        Hour(id: 4, time: "3 PM", symbol: "cloud.sun.fill", temperature: 24),
        Hour(id: 5, time: "4 PM", symbol: "cloud.sun.fill", temperature: 23),
        Hour(id: 6, time: "5 PM", symbol: "cloud.sun.fill", temperature: 22),
        Hour(id: 7, time: "6 PM", symbol: "moon.stars.fill", temperature: 20),
        Hour(id: 8, time: "7 PM", symbol: "moon.stars.fill", temperature: 18),
        Hour(id: 9, time: "8 PM", symbol: "moon.stars.fill", temperature: 17)
    ]

    let days = [
        Day(id: 0, name: "Today", symbol: "cloud.sun.fill", low: 14, high: 25),
        Day(id: 1, name: "Wed", symbol: "sun.max.fill", low: 15, high: 26),
        Day(id: 2, name: "Thu", symbol: "cloud.fill", low: 13, high: 23),
        Day(id: 3, name: "Fri", symbol: "cloud.rain.fill", low: 12, high: 21),
        Day(id: 4, name: "Sat", symbol: "cloud.sun.fill", low: 14, high: 24),
        Day(id: 5, name: "Sun", symbol: "sun.max.fill", low: 16, high: 27),
        Day(id: 6, name: "Mon", symbol: "sun.max.fill", low: 17, high: 28),
        Day(id: 7, name: "Tue", symbol: "cloud.sun.fill", low: 16, high: 25),
        Day(id: 8, name: "Wed", symbol: "cloud.fill", low: 14, high: 23),
        Day(id: 9, name: "Thu", symbol: "cloud.sun.fill", low: 13, high: 22)
    ]
}
