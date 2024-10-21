//
//  Posts.swift
//  boceto_2_CellView
//
//  Created by alumno on 10/9/24.
//

struct Publicacion: Codable{
    // Decodable: Permite convertir información JSON a un modelo de Swift
    // Encodable: Permite convertir un modelo de Swift a JSON
    // Codable: Ambas al mismo tiempo
    var id: Int
    var userId: Int
    var title: String
    var body: String
}

