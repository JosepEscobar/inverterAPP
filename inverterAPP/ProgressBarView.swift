import SwiftUI

struct ProgressBarView: View {
    enum Constant {
        static let lineWidth: CGFloat = 18
        static let lineBackgroundOpacity: CGFloat = 0.2
        static let rotationDegrees: CGFloat = 270.0
    }
    
    @State var progressValue: Double
    @State var tokenCharacter: String = ""
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .stroke(lineWidth: Constant.lineWidth)
                    .opacity(Constant.lineBackgroundOpacity)
                    .foregroundColor(.red)
                    .padding()
                Circle()
                    .trim(from: .zero, to: CGFloat(progressValue))
                    .stroke(style: StrokeStyle(lineWidth: Constant.lineWidth,
                                               lineCap: .round,
                                               lineJoin: .round))
                    .foregroundColor(.red)
                    .rotationEffect(Angle(degrees: Constant.rotationDegrees))
                    .animation(.linear)
                    .padding()
                Text(String(format: "%.0f \(tokenCharacter)", progressValue * 100))
                    .font(.largeTitle)
                    .bold()
            }
        }
        
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(progressValue: 0.50, tokenCharacter: "%")
    }
}
