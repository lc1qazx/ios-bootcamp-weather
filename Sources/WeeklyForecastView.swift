import SwiftUI

struct WeeklyForecastView: View {
    let days: [Day]
    private var minimum: Int { days.map(\.low).min() ?? 0 }
    private var maximum: Int { days.map(\.high).max() ?? 1 }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Label("10-DAY FORECAST", systemImage: "calendar")
                .font(.caption.weight(.semibold))
                .foregroundStyle(.white.opacity(0.65))
            ForEach(days) { day in
                Divider().overlay(.white.opacity(0.1))
                WeeklyRowView(day: day, minimum: minimum, maximum: maximum)
            }
        }
        .padding(18)
        .background(.black.opacity(0.14), in: RoundedRectangle(cornerRadius: 18))
    }
}
