import SwiftUI

struct ContentView: View {
    let forecast = Forecast()

    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, Color(red: 0.25, green: 0.5, blue: 0.7)],
                           startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()

            ScrollView {
                VStack(spacing: 20) {
                    CurrentWeatherView(forecast: forecast)
                        .padding(.top, 20)

                    Text("Partly cloudy for the rest of the afternoon.")
                        .font(.subheadline)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(16)
                        .background(.white.opacity(0.1), in: RoundedRectangle(cornerRadius: 16))

                    HourlyForecastView(hours: forecast.hours)
                    WeeklyForecastView(days: forecast.days)

                    Text("Sample weather data · °C")
                        .font(.caption)
                        .foregroundStyle(.white.opacity(0.7))
                }
                .padding(20)
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
