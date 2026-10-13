import SwiftUI

struct ContentView: View {
    @State private var location: WeatherLocation = .chapelHill
    private var forecast: Forecast { Forecast(location: location) }

    var body: some View {
        ZStack {
            LinearGradient(colors: [Color(red: 0.12, green: 0.34, blue: 0.58),
                                    Color(red: 0.28, green: 0.53, blue: 0.73)],
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            ScrollView {
                VStack(spacing: 20) {
                    CurrentWeatherView(forecast: forecast)
                        .padding(.top, 18)

                    Text(forecast.summary)
                        .font(.subheadline)
                        .lineSpacing(4)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(18)
                        .background(.white.opacity(0.09), in: RoundedRectangle(cornerRadius: 18))

                    HourlyForecastView(hours: forecast.hours)
                    WeeklyForecastView(days: forecast.days)

                    HStack {
                        Label("Sample forecast · °C", systemImage: "info.circle")
                            .font(.caption).foregroundStyle(.white.opacity(0.75))
                        Spacer()
                        Menu {
                            Picker("Location", selection: $location) {
                                ForEach(WeatherLocation.allCases) { city in
                                    Text(city.rawValue).tag(city)
                                }
                            }
                        } label: {
                            Image(systemName: "list.bullet")
                                .font(.title3).frame(width: 44, height: 44)
                        }
                        .accessibilityLabel("Change sample city")
                    }
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
                .frame(maxWidth: 520)
                .frame(maxWidth: .infinity)
            }
        }
        .foregroundStyle(.white)
    }
}

#Preview { ContentView().preferredColorScheme(.dark) }
