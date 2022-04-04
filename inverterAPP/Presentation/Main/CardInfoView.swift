import SwiftUI

struct CardInfoView: View {
    @State var title: String
    @State var value: String
    
    enum Constant {
        static let cornerRadius: CGFloat = 10
        static let width: CGFloat = 150
        static let height: CGFloat = 100
        static let shadowOpacity: Double = 0.3
        static let shadowRadius: CGFloat = 10
        static let shadowXOffset: CGFloat = 0
        static let shadowYOffset: CGFloat = 0
    }
    
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(Constant.cornerRadius)
            VStack {
                Text(title)
                    .bold()
                Text(value)
                    .font(.largeTitle)
                    .bold()
            }.padding()
        }
        .frame(width: Constant.width, height: Constant.height)
        .shadow(color: Color.black.opacity(Constant.shadowOpacity),
                radius: Constant.shadowRadius,
                x: Constant.shadowXOffset,
                y: Constant.shadowYOffset)
    }
}

struct CardInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CardInfoView(title: "Texto de prueba", value: "Valor")
    }
}
