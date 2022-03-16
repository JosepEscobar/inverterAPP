import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            HStack {
                VStack{
                    ProgressBarView(progressValue: 0.12, tokenCharacter: "%%")
                        .frame(width: 156, height: 145)
                    Text("Carga de la batería")
                        .bold()
                }
                VStack{
                    ProgressBarView(progressValue: 0.52, tokenCharacter: "%%")
                        .frame(width: 156, height: 145)
                    Text("Carga salida inversor")
                        .bold()
                }
            }
            HStack {
                VStack {
                    Text("Generación solar")
                        .bold()
                    Text("200 W")
                        .font(.largeTitle)
                        .bold()
                }.padding()
                VStack {
                    Text("Consumo vivienda")
                        .bold()
                    Text("570 W")
                        .font(.largeTitle)
                        .bold()
                }.padding()
            }
            HStack {
                VStack{
                    ProgressBarView(progressValue: 0.12)
                        .frame(width: 156, height: 145)
                    Text("Carga de la batería, mi batería molona")
                        .bold()
                }
                VStack{
                    ProgressBarView(progressValue: 0.12)
                        .frame(width: 156, height: 145)
                    Text("Carga de la batería, mi batería molona")
                        .bold()
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
