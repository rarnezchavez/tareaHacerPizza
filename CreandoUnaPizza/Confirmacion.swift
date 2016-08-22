//
//  Confirmacion.swift
//  CreandoUnaPizza
//
//  Created by Roberto Arnez on 8/21/16.
//  Copyright © 2016 Roberto Arnez. All rights reserved.
//

import UIKit

class Confirmacion: UIViewController {
    
    var tamanoDePizza = " "
    var tipoDeMasa = " "
    var tipoDeQueso = " "
    var ingredientes = " "
    
    
    @IBOutlet weak var confirmacionPizza: UILabel!
    
    @IBOutlet weak var tamanoPizzaLabel: UILabel!
    
    @IBOutlet weak var tipoMasaLabel: UILabel!
    
    @IBOutlet weak var tipoQuesoLabel: UILabel!

    @IBOutlet weak var ingredientesLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        tamanoPizzaLabel.text = tamanoDePizza
        tipoMasaLabel.text = tipoDeMasa
        tipoQuesoLabel.text = tipoDeQueso
        ingredientesLabel.text = ingredientes
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func confirmacion(sender: AnyObject) {
        confirmacionPizza.text = "Tu Pizza creada es: \(tamanoDePizza) \(tipoDeMasa) \(tipoDeQueso) con \(ingredientes)"
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
