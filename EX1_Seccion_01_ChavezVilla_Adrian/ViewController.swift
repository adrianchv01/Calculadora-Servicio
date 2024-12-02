//
//  ViewController.swift
//  EX1_Seccion_01_ChavezVilla_Adrian
//
//  Created by DAMII on 18/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var DniTextField: UITextField!
    
    @IBOutlet weak var servicioTextField: UITextField!
    
    @IBOutlet weak var costoServicioTextField: UITextField!
    
    @IBOutlet weak var costoInstalacionTextField: UITextField!
    
    @IBOutlet weak var descuentoTextField: UITextField!
    
    
    @IBOutlet weak var totalTextField: UITextField!
    
    
    var name: String = ""
    var lastName: String = ""
    var Dni:Int = 0
    var servicio:String = ""
    var costoServicio:Double = 0.0
    var costoInstalacion:Double = 0.0
    var descuento:Double = 0.0
    var total:Double = 0.0
    var totalPagar:Double = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    func calculateData(){
        servicio = servicioTextField.text ?? ""
        
        switch servicio{
        case "Internet 60mb":
            
            costoServicio = 229
            costoInstalacion = 20.00
            descuento = 0.2
            total = costoServicio+costoInstalacion
            totalPagar = total-(total*descuento)
            costoServicioTextField.text = ("\(costoServicio)")
            costoInstalacionTextField.text = ("\(costoInstalacion)")
            descuentoTextField.text = ("20%")
            totalTextField.text = ("\(totalPagar)")
        case "Internet 20mb":
            costoServicio = 100.00
            costoInstalacion = 20.00
            descuento = 0.05
            total = costoServicio+costoInstalacion
            totalPagar = total-(total*descuento)
            costoServicioTextField.text = ("\(costoServicio)")
            costoInstalacionTextField.text = ("\(costoInstalacion)")
            descuentoTextField.text = ("5%")
            totalTextField.text = ("\(totalPagar)")
        case "Internet Satelital 40mb":
            costoServicio = 180.00
            costoInstalacion = 30.00
            descuento = 0.1
            total = costoServicio+costoInstalacion
            totalPagar = total-(total*descuento)
            costoServicioTextField.text = ("\(costoServicio)")
            costoInstalacionTextField.text = ("\(costoInstalacion)")
            descuentoTextField.text = ("10%")
            totalTextField.text = ("\(totalPagar)")
            
            
        default:
            print("No seleccionaste ningun servicio")
        }
    
        
        
    }
    
    func goToResultScreen(){
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
       
    }
    
    
    @IBAction func didTapCalculate(_ sender: UIButton) {
        calculateData()
    }
    

}

