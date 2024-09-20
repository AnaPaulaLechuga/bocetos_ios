//
//  Generador_de_citas.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import Foundation

class GeneradorDeCitas{
    var citas_creadas: Array<Cita>
    
    init(){
        citas_creadas = []
    }
    
    func agregar_cita(que_dijo: String, quien_lo_dijo: String){
        var cita_generada = Cita(quien_lo_dijo: quien_lo_dijo, que_dijo: que_dijo)
        
        citas_creadas.append(cita_generada)
    }
    
    func generar_citas_falsas(){
        self.agregar_cita("Soy solo un pequeño cuadrado en un mundo lleno de picos, sierras y saltos imposibles. Pero, oye, ¡al menos nunca tengo que preocuparme por doblar esquinas! Cada vez que fallo, me hago más fuerte... o al menos, más testarudo. Así que, si ves que me estrello una y otra vez, no te preocupes, es solo mi forma cuadrada de decir '¡Inténtalo de nuevo!'",  quien_lo_dijo: "Cuadrado predeterminado de Geometry Dash")
    }
}
