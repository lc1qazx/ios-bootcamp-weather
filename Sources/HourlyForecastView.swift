import SwiftUI

struct HourlyForecastView: View {
    let hours: [Hour]

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Label("HOURLY FORECAST", systemImage: "clock")
                .font(.caption.weight(.semibold))
                .foregroundStyle(.white.opacity(0.65))
            Divider().overlay(.white.opacity(0.12))
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 14) {
                    // ForEach builds a view for each item. A stable ID identifies each item.
                    ForEach(hours) { hour in
                        HourlyRowView(hour: hour)
                    }
                }
            }
            .accessibilityLabel("Hourly forecast. Scroll horizontally for more.")
        }
        .padding(18)
        .background(.black.opacity(0.14), in: RoundedRectangle(cornerRadius: 18))
    }
}
