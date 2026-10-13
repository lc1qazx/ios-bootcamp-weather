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
                    // ForEach 根据数据生成组件；稳定 id 让 SwiftUI 能跟踪每条数据。
                    ForEach(hours) { hour in
                        HourlyRowView(hour: hour)
                    }
                }
            }
            .accessibilityLabel("每小时预报，横向滚动查看更多")
        }
        .padding(18)
        .background(.black.opacity(0.14), in: RoundedRectangle(cornerRadius: 18))
    }
}
