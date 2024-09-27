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
    
    func agregar_cita_manual(_ que_dijo: String, quien_lo_dijo: String){
        let cita_generada = Cita(quien_lo_dijo: quien_lo_dijo, que_dijo: que_dijo)
        
        citas_creadas.append(cita_generada)
    }
    
    func agregar_cita(_ cita_nueva: Cita){
        citas_creadas.append(cita_nueva)
    }
    
    func generar_citas_falsas(){
        self.agregar_cita_manual("La gravedad me intenta atrapar, pero siempre encuentro una manera de esquivarla. ¡Soy un cuadrado con estilo!",
                     quien_lo_dijo: "Cuadrado Básico"
        )
        
        self.agregar_cita_manual("Soy cuadrado, pero mis saltos son todo menos planos. ¡Vamos a rebotar por la vida!",
                          quien_lo_dijo: "Cuadrado Calavera"
        )
        
        self.agregar_cita_manual("Mis amigos me dicen que soy un poco cuadrado... ¡pero eso es porque no saben saltar como yo!",
                          quien_lo_dijo: "Cuadrado Meltdown"
        )
        
    }
    
    func obtener_cita_aleatoria() -> Cita{
        var cita_para_regresar: Cita
        cita_para_regresar = citas_creadas[Int.random(in: 0...citas_creadas.count-1)]
        
        return cita_para_regresar
    }
    
}
