import SwiftUI

struct TemperatureRangeView: View {
    let low: Int
    let high: Int
    let minimum: Int
    let maximum: Int

    var body: some View {
        GeometryReader { geometry in
            let total = CGFloat(max(maximum - minimum, 1))
            let offset = CGFloat(low - minimum) / total * geometry.size.width
            let width = CGFloat(high - low) / total * geometry.size.width
            ZStack(alignment: .leading) {
                Capsule().fill(.black.opacity(0.18))
                Capsule()
                    .fill(LinearGradient(colors: [.cyan, .yellow, .orange],
                                         startPoint: .leading, endPoint: .trailing))
                    .frame(width: max(width, 3))
                    .offset(x: offset)
            }
        }
        .accessibilityHidden(true)
    }
}
