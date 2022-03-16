import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 20) {
                HStack {
                    VStack{
                        ZStack {
                            Color.white
                                .cornerRadius(10)
                            VStack{
                                ProgressBarView(progressValue: 0.12, tokenCharacter: "%%")
                                    .frame(width: 156, height: 145)
                                Text("Carga de la batería")
                                    .font(.caption)
                                    .bold()
                                    .padding(.horizontal)
                            }
                        }
                        .frame(width: 150, height: 200)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 0)
                    }.padding([.bottom, .top])
                    VStack{
                        ZStack {
                            Color.white
                                .cornerRadius(10)
                            VStack{
                                ProgressBarView(progressValue: 0.12, tokenCharacter: "%%")
                                    .frame(width: 156, height: 145)
                                Text("Carga salida inversor")
                                    .font(.caption)
                                    .bold()
                                    .padding(.horizontal)
                            }
                        }
                        .frame(width: 150, height: 200)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 0)
                    }.padding([.bottom, .top, .leading])
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
                    VStack{
                        ZStack {
                            Color.white
                                .cornerRadius(10)
                            VStack{
                                ProgressBarView(progressValue: 0.12, tokenCharacter: "%%")
                                    .frame(width: 156, height: 145)
                                Text("Carga de la batería")
                                    .font(.caption)
                                    .bold()
                                    .padding(.horizontal)
                            }
                        }
                        .frame(width: 150, height: 200)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 0)
                    }.padding([.bottom, .top])
                    VStack{
                        ZStack {
                            Color.white
                                .cornerRadius(10)
                            VStack{
                                ProgressBarView(progressValue: 0.12, tokenCharacter: "%%")
                                    .frame(width: 156, height: 145)
                                Text("Carga salida inversor")
                                    .font(.caption)
                                    .bold()
                                    .padding(.horizontal)
                            }
                        }
                        .frame(width: 150, height: 200)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 0)
                    }.padding([.bottom, .top, .leading])
                }
            }
            .navigationTitle("Inverter APP")
            .navigationBarItems(leading:
                    HStack {
                        Button(action: {
                            print("Apple button tapped!")
                        }) {
                            Image(systemName: "applelogo")
                        }.padding()

                        Button("File") {
                            print("About button tapped!")
                        }
                        Button("Edit") {
                            print("About button tapped!")
                        }
                    }, trailing:
                        HStack {
                            Button(action: {
                                print("Info button tapped!")
                            }) {
                                Image(systemName: "gearshape")
                            }
                        }
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
