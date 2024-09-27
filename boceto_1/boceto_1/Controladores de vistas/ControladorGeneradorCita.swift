//
//  ControladorGeneradorCita.swift
//  boceto_1
//
//  Created by alumno on 9/27/24.
//

import UIKit

class ControladorPantallaAgregarCita: UIViewController {
    var quien_lo_dice: String = ""
    var que_dice: String = ""
    
    
    @IBOutlet weak var quien_lo_dijo_view: UITextField!
    
    @IBOutlet weak var que_es_lo_que_dijo: UITextField!
    
    override func viewDidLoad(){
        super.viewDidLoad()
    }
}
