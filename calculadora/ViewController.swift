//
//  ViewController.swift
//  calculadora
//
//  Created by Alumno on 8/18/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalConPropina: UILabel!
    @IBOutlet weak var totalPropina: UILabel!
    @IBOutlet weak var porcentaje: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var cuenta: UITextField!
   
    
    @IBAction func doChangePropina(_ sender: Any) {
        lblProcentajePropina.text = "\(Init(slider.value)%"
        let cuenta = Float(txtCuenta.text!) ?? 0.0
        
        let pocentajePropina = Float(Init(slider.value))
        let propina = cuenta * porcentajePropina / 100.0
        
        totalPropina.text = "$\(propina)"
        //lblMontoPropina.text = String(format: "$ %.2f", propina)
        
        
        let total = propina + cuenta
        totalConPropina.text = "$\(total)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


