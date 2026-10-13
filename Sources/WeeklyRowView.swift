import SwiftUI

struct WeeklyRowView: View {
    let day: Day

    var body: some View {
        HStack {
            Text(day.name)
                .frame(width: 55, alignment: .leading)
            Image(systemName: day.symbol)
                .symbolRenderingMode(.multicolor)
                .font(.title3)
                .frame(width: 30)
            Spacer()
            Text("\(day.low)°")
                .foregroundStyle(.white.opacity(0.6))
                .frame(width: 45)
            Text("\(day.high)°")
                .frame(width: 45)
        }
        .padding(.vertical, 4)
    }
}
