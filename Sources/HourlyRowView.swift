import SwiftUI

struct HourlyRowView: View {
    let hour: Hour

    var body: some View {
        VStack(spacing: 15) {
            Text(hour.time).font(.caption.weight(.semibold))
            Image(systemName: hour.symbol)
                .symbolRenderingMode(.multicolor)
                .font(.system(size: 24))
                .frame(height: 28)
            Text("\(hour.temperature)°").font(.title3.weight(.medium))
        }
        .frame(width: 54)
        .accessibilityElement(children: .combine)
    }
}
