//
//  TipoQueso.swift
//  CreandoUnaPizza
//
//  Created by Roberto Arnez on 8/21/16.
//  Copyright © 2016 Roberto Arnez. All rights reserved.
//

import UIKit

class TipoQueso: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var TipoQuesoPicker: UILabel!
    
    @IBOutlet weak var tamanoMasa: UILabel!
    
    var tipoQueso : Array<String> = Array<String> ()
    var tipoDeMasa:String=""
    var tamanoDePizza:String=""
    
    override func viewWillAppear(animated: Bool) {
        tamanoMasa.text = "Pizza \(tamanoDePizza) \(tipoDeMasa)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tipoQueso.append("Mozarela")
        tipoQueso.append("Cheddar")
        tipoQueso.append("Parmesano")
        tipoQueso.append("Sin queso")

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return tipoQueso.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return tipoQueso[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        TipoQuesoPicker.text = tipoQueso[row]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista = segue.destinationViewController as! Ingredientes
        sigVista.tamanoDePizza = self.tamanoDePizza
        sigVista.tipoDeMasa = self.tipoDeMasa
        sigVista.tipoDeQueso = self.TipoQuesoPicker.text!
        
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
