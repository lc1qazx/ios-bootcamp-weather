import SwiftUI

struct WeeklyRowView: View {
    let day: Day
    let minimum: Int
    let maximum: Int

    var body: some View {
        HStack(spacing: 10) {
            Text(day.name).font(.body.weight(.medium))
                .lineLimit(1).minimumScaleFactor(0.8)
                .frame(width: 52, alignment: .leading)
            Image(systemName: day.symbol)
                .symbolRenderingMode(.multicolor)
                .font(.system(size: 20))
                .frame(width: 26)
            Text("\(day.low)°").foregroundStyle(.white.opacity(0.55))
                .frame(width: 30, alignment: .trailing)
            TemperatureRangeView(low: day.low, high: day.high, minimum: minimum, maximum: maximum)
                .frame(height: 5)
            Text("\(day.high)°").frame(width: 30, alignment: .trailing)
        }
        .font(.body.monospacedDigit())
        .padding(.vertical, 3)
        .accessibilityElement(children: .combine)
    }
}
