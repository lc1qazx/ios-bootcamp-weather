import SwiftUI

struct WeeklyForecastView: View {
    let days: [Day]

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Label("10-DAY FORECAST", systemImage: "calendar")
                .font(.caption)
                .foregroundStyle(.white.opacity(0.7))

            ForEach(days) { day in
                Divider()
                WeeklyRowView(day: day)
            }
        }
        .padding(18)
        .background(.black.opacity(0.15), in: RoundedRectangle(cornerRadius: 16))
    }
}
