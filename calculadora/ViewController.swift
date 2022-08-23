//
//  ViewController.swift
//  calculadora-propinas
//
//  Created by Alumno on 8/18/22.
//  Copyright © 2022 ULSA. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    var porcentaje :Float = 0
    
    
    
    @IBOutlet weak var tfldTotal: UITextField!
    @IBOutlet weak var lblPorcentaje: UILabel!
    @IBOutlet weak var sldPropina: UISlider!
    @IBOutlet weak var lblPropina: UILabel!
    @IBOutlet weak var lblTotal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func doChangeValue(_ sender: Any) {
        porcentaje = sldPropina.value
        lblPorcentaje.text = "\(round(porcentaje))%"
        
        let totalStr = tfldTotal.text!
        
        let total = Float(totalStr) ?? 0.0
        
        let resultadoPropina = (total * (porcentaje/100.0))
        
        let cantidadTotal = total + resultadoPropina
        
        lblPropina.text = String(format: "$ %.2f",resultadoPropina)
        
        lblTotal.text = String(format: "$ %.2f",cantidadTotal)
        
        
    }
}
