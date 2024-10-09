//
//  provedor_publicaciones.swift
//  boceto_2_CellView
//
//  Created by alumno on 10/9/24.
//

import Foundation
import UIKit

class ProveedorDePublicaciones{
    let url_de_publicaciones = "https://jsonplaceholder.typicode.com/posts"
    var lista_de_publicaciones: [Publicacion] = []
    
    func obtener_publicaciones(que_hacer_al_recibir: @escaping ([])) -> [Publicacion] {
        let ubicacion = URL(string: url_de_publicaciones)!
        URLSession.shared.dataTask(with: ubicacion) {(datos, respuesta, error)
            in do {
                if let publicaciones_recibidas = datos{
                    let prueba_de_interpretacion_de_datos = try JSONDecoder().decode([Publicacion].self, from: publicaciones_recibidas)
                    self.lista_de_publicaciones = prueba_de_interpretacion_de_datos
                }
                else {
                    print(respuesta)
                }
            }
            catch {
                print("Error")
            }
        } .resume()
        
     return lista_de_publicaciones
    }
}
