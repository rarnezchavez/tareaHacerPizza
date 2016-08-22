//
//  TipoMasa.swift
//  CreandoUnaPizza
//
//  Created by Roberto Arnez on 8/21/16.
//  Copyright © 2016 Roberto Arnez. All rights reserved.
//

import UIKit

class TipoMasa: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var tipoMasa: UILabel!
    
    @IBOutlet weak var tamanoPizzaLabel: UILabel!
    
    var tamanoPizza:String = ""
    var tipoMasaPicker : Array<String> = Array<String>()
    
    override func viewWillAppear(animated: Bool) {
        tamanoPizzaLabel.text = "Tamano de la pizza \(tamanoPizza)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipoMasaPicker.append("Delgada")
        tipoMasaPicker.append("Crujiente")
        tipoMasaPicker.append("Gruesa")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipoMasaPicker.count
    }

    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return self.tipoMasaPicker[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tipoMasa.text = tipoMasaPicker[row]
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! TipoQueso
        sigVista.tipoDeMasa = tipoMasa.text!
        sigVista.tamanoDePizza = tamanoPizza
    }
    
    
}
