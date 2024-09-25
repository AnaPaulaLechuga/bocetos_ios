//
//  ViewController.swift
//  boceto_1
//
//  Created by alumno on 9/18/24.
//

import UIKit


class ViewController: UIViewController {
    var cita_para_enviar: Cita = Cita(quien_lo_dijo: "Cuadrado Básico", que_dijo: "Guácala con mi vida")

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }


    @IBSegueAction func al_abrir_pantalla_de_citas(_ coder: NSCoder) -> ControladorPantallaCitas? {
        return ControladorPantallaCitas(muro_texto: "Guácala con mi vida", de_quien: "Cuadrado Básico", coder: coder)
    }
    
}
