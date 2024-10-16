//
//  ContentView.swift
//  aplicacion_prueba
//
//  Created by alumno on 10/16/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @State var pulsaciones: Bool = true
    var body: some View {
        HStack{
            VStack {
                if pulsaciones{
                    Model3D(named: "Scene", bundle: realityKitContentBundle)
                        .padding(.bottom, 50)
                }
                else{
                    Model3D(named: "Sun", bundle: realityKitContentBundle)
                        .padding(.bottom, 0)
                }
            }
            Text("Hello, world!")
            Text("Hello, worawld!\(pulsaciones)")
            
            
            Text("Hello, world!")
            Button(action: {
                pulsaciones = !pulsaciones
                print("Hola mundo desde consola\(pulsaciones)")},
                   label: {Text("Hola mundo")})
        }
        
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
