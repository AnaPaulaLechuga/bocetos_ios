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
    
    var quien_lo_dijo: String
    var muro_de_texto: String
    
    required init?(coder: NSCoder) {
        self.quien_lo_dijo = ""
        self.muro_de_texto = ""
        super.init(coder: coder)
        print("Error: Se ha cargado el default de INIT")
    }
    
    init?(muro_texto: String, de_quien: String, coder: NSCoder){
        self.quien_lo_dijo = de_quien
        self.muro_de_texto = muro_texto
        
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        inicializar_pantalla()
    }
    
    func inicializar_pantalla(){
        nombre_de_quien_lo_dijo.text = self.quien_lo_dijo
        que_dijo_muro_texto.text = self.muro_de_texto
    }
}
