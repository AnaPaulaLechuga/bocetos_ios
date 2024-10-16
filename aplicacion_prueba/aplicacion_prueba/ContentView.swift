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
    @State var pulsaciones: Int = 0
    var body: some View {
        HStack{
            VStack {
                Model3D(named: "Scene", bundle: realityKitContentBundle)
                    .padding(.bottom, 50)
                Model3D(named: "Sun", bundle: realityKitContentBundle)
                    .padding(.bottom, 0)
            }
            Text("Hello, world!")
            Text("Hello, worawld!\(pulsaciones)")
            
            switch pulsaciones{
                case 1:
                    Text("Halo")
                case 2:
                    Text("Hali 3")
                default:
                    Text("Default")
            }
            
            Text("Hello, world!")
            Button(action: {
                pulsaciones += 1
                print("Hola mundo desde consola\(pulsaciones)")},
                   label: {Text("Hola mundo")})
        }
        
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
