//
//  ControladorCita.swift
//  boceto_1
//
//  Created by alumno on 9/20/24.
//

import UIKit

class ControladorVistaCitas: UIViewController {
    @IBOutlet weak var nombre_de_quien_lo_dijo: UILabel!
    @IBOutlet weak var que_dijo_que: UILabel!
    
    required init?(coder: NSCoder){
        texto = ""
        super.init(coder: coder)
        print("Algo pasó aquí")
    }
    
    init(titulo_secundario: String, coder: NSCoder){
        super.init(coder: coder)
        
        nombre_de_quien_lo_dijo.text = titulo_secundario
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Me estoy ejecutando")
        
        nombre_de_quien_lo_dijo.text = titulo_secundario
    }


}
