//
//  ViewController.swift
//  Clase 3
//
//  Created by Alumno on 26/01/17.
//  Copyright © 2017 area51. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lbltitulo: UILabel!
    @IBOutlet weak var sldNumeroImagen: UISlider!
    @IBOutlet weak var swtModificarManual: UISwitch!
    @IBOutlet weak var btnAceptar: UIButton!
    @IBOutlet weak var btnSiguiente: UIButton!
    @IBOutlet weak var segEstilos: UISegmentedControl!
    @IBOutlet weak var imgimagen: UIImageView!
    @IBOutlet weak var txtNumeroimagen: UITextField!
    @IBOutlet weak var vwContenedor: UIView!
    
    @IBOutlet weak var lblError: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBAction func sldNumeroImagenChange(_ sender: UISlider) {
        let numeroImagen = sender.value
        let num = Int(numeroImagen)
        imgimagen.image = UIImage(named : "image_\(num)")
        
    }
    
    
    @IBAction func swtModificarImagenChange(_ sender: UISwitch) {
        
        let oculto = !sender.isOn
        vwContenedor.isHidden = oculto
        
        
        
        
    }
    
    
    @IBAction func btnAceptarTouch(_ sender: UIButton) {
        
        
        
        let inputText = txtNumeroimagen.text
        
        if inputText != "" {
        
            let num = Int(inputText!)
            
            
            if num! >= 0 && num! <= 7 {
                imgimagen.image = UIImage(named : "image_\(num!)")
                lblError.text = ""
                
            }else{
                lblError.text = "El numero \(num!) es incorrecto"
            }
            
        }else{
             lblError.text = "Ingrese un numero "
        }
        
        
        
        
        
    }
    
    @IBAction func btnSiguienteTouch(_ sender: UIButton) {
    }
    
    
    @IBAction func segEstiloChange(_ sender: UISegmentedControl) {
        
        let indiceSelecionado = sender.selectedSegmentIndex
        
        
        switch indiceSelecionado {
        case 0:
                lbltitulo.backgroundColor = UIColor.red
                sldNumeroImagen.minimumTrackTintColor = UIColor.red
                swtModificarManual.onTintColor = UIColor.red
                btnAceptar.backgroundColor = UIColor.red
                btnSiguiente.backgroundColor = UIColor.red
                segEstilos.tintColor = UIColor.red
        case 1:
            lbltitulo.backgroundColor = UIColor.darkGray
            sldNumeroImagen.minimumTrackTintColor = UIColor.darkGray
            swtModificarManual.onTintColor = UIColor.darkGray
            btnAceptar.backgroundColor = UIColor.darkGray
            btnSiguiente.backgroundColor = UIColor.darkGray
            segEstilos.tintColor = UIColor.darkGray
            //lbltitulo.backgroundColor = UIColor (red : 255,green:190,blue :0, alpha :1)
            //sldNumeroImagen.minimumTrackTintColor = UIColor(red : 255,green:190,blue :0, alpha :1)
            //swtModificarManual.onTintColor = UIColor(red : 255,green:190,blue :0, alpha :1)
            //btnAceptar.backgroundColor = UIColor (red : 255,green:190,blue :0, alpha :1)
            //btnSiguiente.backgroundColor = UIColor (red : 255,green:190,blue :0, alpha :1)
            //segEstilos.tintColor = UIColor (red : 255,green:190,blue :0, alpha :1)
        case 2:
            lbltitulo.backgroundColor = UIColor.blue
            sldNumeroImagen.minimumTrackTintColor = UIColor.blue
            swtModificarManual.onTintColor = UIColor.blue
            btnAceptar.backgroundColor = UIColor.blue
            btnSiguiente.backgroundColor = UIColor.blue
            segEstilos.tintColor = UIColor.blue
        default :
            lbltitulo.backgroundColor = UIColor.black
        }
        
        
    }
    
    

}

