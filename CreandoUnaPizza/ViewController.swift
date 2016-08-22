//
//  ViewController.swift
//  CreandoUnaPizza
//
//  Created by Roberto Arnez on 8/21/16.
//  Copyright © 2016 Roberto Arnez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var tamano: UILabel!
    
    var tamanoPizzaPicker : Array<String> = Array<String> ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tamanoPizzaPicker.append ("Chica")
        tamanoPizzaPicker.append("Mediana")
        tamanoPizzaPicker.append("Grande")
        // Do any additional setup after loading the view, typically from a nib.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tamanoPizzaPicker.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tamanoPizzaPicker[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tamano.text = tamanoPizzaPicker[row]
    }
    
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista=segue.destinationViewController as! TipoMasa
        sigVista.tamanoPizza = tamano.text!
    }


}

