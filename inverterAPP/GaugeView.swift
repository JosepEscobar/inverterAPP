import SwiftUI

struct GaugeView: View {
    @State var progressValue: CGFloat
    @State var titleText: String
    
    enum Constant {
        static let cornerRadius: CGFloat = 10
        static let width: CGFloat = 150
        static let height: CGFloat = 200
        static let shadowOpacity: Double = 0.3
        static let shadowRadius: CGFloat = 10
        static let shadowXOffset: CGFloat = 0
        static let shadowYOffset: CGFloat = 0

        enum ProgressBarView {
            static let width: CGFloat = 156
            static let height: CGFloat = 145
        }
    }
    
    var body: some View {
        VStack{
            ZStack {
                Color.white
                    .cornerRadius(Constant.cornerRadius)
                VStack{
                    ProgressBarView(progressValue: progressValue, tokenCharacter: "%%")
                        .frame(width: Constant.ProgressBarView.width,
                               height: Constant.ProgressBarView.height)
                    Text(titleText)
                        .font(.caption)
                        .bold()
                        .padding(.horizontal)
                }
            }
            .frame(width: Constant.width, height: Constant.height)
            .shadow(color: Color.black.opacity(Constant.shadowOpacity),
                    radius: Constant.shadowRadius,
                    x: Constant.shadowXOffset,
                    y: Constant.shadowYOffset)
        }
    }
}

struct GaugeView_Previews: PreviewProvider {
    static var previews: some View {
        GaugeView(progressValue: 0.12, titleText: "Texto de prueba")
    }
}
