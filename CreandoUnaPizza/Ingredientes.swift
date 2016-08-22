//
//  Ingredientes.swift
//  CreandoUnaPizza
//
//  Created by Roberto Arnez on 8/21/16.
//  Copyright © 2016 Roberto Arnez. All rights reserved.
//

import UIKit

class Ingredientes: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var ingredientes: UILabel!
    
    @IBOutlet weak var tamanoMasaQueso: UILabel!
    
    var tamanoDePizza = " "
    var tipoDeMasa = " "
    var tipoDeQueso = " "
    
    var ingredientesPicker : Array<String> = Array<String>()
    
    override func viewWillAppear(animated: Bool) {
        tamanoMasaQueso.text = "Pizza \(tamanoDePizza) \(tipoDeMasa) \(tipoDeQueso)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ingredientesPicker.append("Jamon")
        ingredientesPicker.append("Pepperoni")
        ingredientesPicker.append("Pavo")
        ingredientesPicker.append("Salchicha")
        ingredientesPicker.append("Aceituna")
        ingredientesPicker.append("Cebolla")
        ingredientesPicker.append("Pimiento")
        ingredientesPicker.append("Pina")
        ingredientesPicker.append("Anchoa")

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ingredientesPicker.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return ingredientesPicker[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ingredientes.text = ingredientesPicker[row]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! Confirmacion
        sigVista.tamanoDePizza = self.tamanoDePizza
        sigVista.tipoDeMasa = self.tipoDeMasa
        sigVista.tipoDeQueso = self.tipoDeQueso
        sigVista.ingredientes = self.ingredientes.text!
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
