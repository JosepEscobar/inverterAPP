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
                    CardInfoView(title: "Generación solar", value: "200 W")
                    CardInfoView(title: "Consumo vivienda", value: "570 W")
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
