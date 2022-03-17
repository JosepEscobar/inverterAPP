import SwiftUI

struct GaugeView: View {
    @State var progressValue: CGFloat
    @State var titleText: String
    
    
    var body: some View {
        VStack{
            ZStack {
                Color.white
                    .cornerRadius(10)
                VStack{
                    ProgressBarView(progressValue: progressValue, tokenCharacter: "%%")
                        .frame(width: 156, height: 145)
                    Text(titleText)
                        .font(.caption)
                        .bold()
                        .padding(.horizontal)
                }
            }
            .frame(width: 150, height: 200)
            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 0)
        }
    }
}

struct GaugeView_Previews: PreviewProvider {
    static var previews: some View {
        GaugeView(progressValue: 0.12, titleText: "Texto de prueba")
    }
}
