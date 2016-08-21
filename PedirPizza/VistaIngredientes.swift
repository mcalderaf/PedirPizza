//
//  VistaIngredientes.swift
//  PedirPizza
//
//  Created by Marisela Caldera on 21/08/16.
//  Copyright © 2016 itchii. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController {
    var cade1: String = ""
    
    @IBOutlet weak var resuIngred: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado:String = cade1
        let sigVista = segue.sourceViewController as! ViewController
        print(" + "+resultado)
        sigVista.cadeIng = resultado
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func Jamon(sender: AnyObject) {
        cade1 = "Jamon"
        resuIngred.text = "Ingrediente: "+cade1
    }


    @IBAction func Pepperoni(sender: AnyObject) {
        cade1 = "Pepperoni"
        resuIngred.text = "Ingrediente: "+cade1
    }
    
    @IBAction func Pavo(sender: AnyObject) {
        cade1 = "Pavo"
        resuIngred.text = "Ingrediente: "+cade1
    }

    @IBAction func Salchicha(sender: AnyObject) {
        cade1 = "Salchicha"
        resuIngred.text = "Ingrediente: "+cade1
    }

    @IBAction func Aceituna(sender: AnyObject) {
        cade1 = "Aceituna"
        resuIngred.text = "Ingrediente: "+cade1
    }

    @IBAction func Cebolla(sender: AnyObject) {
        cade1 = "Cebolla"
        resuIngred.text = "Ingrediente: "+cade1
    }
 
    @IBAction func Piña(sender: AnyObject) {
        cade1 = "Piña"
        resuIngred.text = "Ingrediente: "+cade1
    }
    
}
