//
//  ControladorPantallaCitas.swift
//  boceto_1
//
//  Created by alumno on 9/23/24.
//

import UIKit

class ControladorPantallaCitas: UIViewController {
    @IBOutlet weak var nombre_de_quien_lo_dijo: UILabel!
    @IBOutlet weak var que_dijo_muro_texto: UILabel!
    
    
    
    /*var quien_lo_dijo: String
    var muro_de_texto: String*/
    
    var cita_actual: Cita
    
    required init?(coder: NSCoder) {
        /*self.quien_lo_dijo = ""
        self.muro_de_texto = ""*/
        self.cita_actual = Cita(quien_lo_dijo: "Desarrollador", que_dijo: "Tenemos un problema con las antenas de llegada. Repórtalo por favor")
        super.init(coder: coder)
        print("Error: Se ha cargado el default de INIT")
    }
    
    init?(cita_para_citar: Cita/*muro_texto: String, de_quien: String*/, coder: NSCoder){
        /*self.quien_lo_dijo = de_quien
        self.muro_de_texto = muro_texto*/
        self.cita_actual = cita_para_citar
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inicializar_pantalla()
    }
    
    func inicializar_pantalla(){
        nombre_de_quien_lo_dijo.text = /*self.quien_lo_dijo*/ cita_actual.nombre
        que_dijo_muro_texto.text = /*self.muro_de_texto*/ cita_actual.texto
    }
}
