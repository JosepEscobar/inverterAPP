import SwiftUI

struct CardInfoView: View {
    @State var title: String
    @State var value: String
    
    var body: some View {
        ZStack {
            Color.white
                .cornerRadius(10)
            VStack {
                Text(title)
                    .bold()
                Text(value)
                    .font(.largeTitle)
                    .bold()
            }.padding()
        }
        .frame(width: 150, height: 100)
        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 0)
    }
}

struct CardInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CardInfoView(title: "Texto de prueba", value: "Valor")
    }
}
