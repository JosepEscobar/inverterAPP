import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    GaugeView(progressValue: 0.12, titleText: "Carga de la batería 2")
                        .padding([.bottom, .top])
                    GaugeView(progressValue: 0.50, titleText: "Carga salida inversor")
                        .padding([.bottom, .top, .leading])
                }
                HStack {
                    ZStack {
                        Color.white
                            .cornerRadius(10)
                        VStack {
                            Text("Generación solar")
                                .bold()
                            Text("200 W")
                                .font(.largeTitle)
                                .bold()
                        }.padding()
                    }
                    .frame(width: 150, height: 100)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 0)
                    
                    ZStack {
                        Color.white
                            .cornerRadius(10)
                        VStack {
                            Text("Consumo vivienda")
                                .bold()
                            Text("570 W")
                                .font(.largeTitle)
                                .bold()
                        }.padding()
                    }
                    .frame(width: 150, height: 100)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 0)
                    .padding(.leading)
                }
                HStack {
                    GaugeView(progressValue: 0.30, titleText: "Carga salida inversor")
                        .padding([.bottom, .top])
                    GaugeView(progressValue: 0.30, titleText: "Carga salida inversor")
                        .padding([.bottom, .top, .leading])
                }
            }
            .navigationTitle("Inverter APP")
            .navigationBarItems(
                trailing:
                    HStack {
                        NavigationLink(destination: SettingsView()) {
                            Image(systemName: "gearshape")
                                .tint(.black)
                        }
                    })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
