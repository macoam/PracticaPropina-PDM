//
//  ViewController.swift
//  PracticaPropinas
//
//  Created by Alumno on 8/31/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtCuenta: UITextField!
    @IBOutlet weak var slbPorcentaje: UISlider!
    @IBOutlet weak var lblValorPorcentaje: UILabel!
    @IBOutlet weak var lblValorPropina: UILabel!
    @IBOutlet weak var lblValorTotal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func DoEditEndCuenta(_ sender: Any) {
    }

    @IBAction func DoChangePorcentaje(_ sender: Any) {
        lblValorPorcentaje.text = "\(String(Int(slbPorcentaje.value)))%"
        if txtCuenta.text != nil && txtCuenta.text != "" {
            let cuenta = Float(txtCuenta.text!)!
            let porcentaje = Float(Int(slbPorcentaje.value))
            let propina = cuenta * (porcentaje / 100.0)
            let totalConPropina = cuenta + propina
            
            lblValorPropina.text = "$\(String(format: "%.2f", propina))"
            lblValorTotal.text = "$\(String(format: "%.2f", totalConPropina))"
        }
        
    }

    
    
    
    
    

    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

