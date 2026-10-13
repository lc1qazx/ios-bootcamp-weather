import SwiftUI

struct CurrentWeatherView: View {
    let forecast: Forecast

    var body: some View {
        VStack(spacing: 4) {
            Text(forecast.location.rawValue).font(.largeTitle.weight(.medium))
            Text("\(forecast.temperature)°")
                .font(.system(size: 88, weight: .thin, design: .rounded))
                .padding(.leading, 14)
            Text(forecast.condition).font(.title3).foregroundStyle(.white.opacity(0.85))
            Text("H:\(forecast.high)°  L:\(forecast.low)°").font(.body.weight(.medium))
        }
        .frame(maxWidth: .infinity)
        .padding(.bottom, 10)
        .accessibilityElement(children: .combine)
    }
}
