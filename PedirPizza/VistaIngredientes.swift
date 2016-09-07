//
//  VistaIngredientes.swift
//  PedirPizza
//
//  Created by Marisela Caldera on 21/08/16.
//  Copyright © 2016 itchii. All rights reserved.
//

import UIKit


class VistaIngredientes: UIViewController {
    var PizzaAux:Pizza=Pizza()
    var cade1: String = ""
    var count = 0
    
    @IBOutlet weak var resuIngred: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado:String = cade1
        let sigVista = segue.destinationViewController as! ViewController
        print(" + "+resultado)
        sigVista.PizzaAux.ingredientes = resultado
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func Jamon(sender: AnyObject) {
        if count<5 {
            cade1 = "Jam"
            PizzaAux.ingredientes=PizzaAux.ingredientes+" "+cade1
            resuIngred.text = PizzaAux.ingredientes
            count=count+1
        }
    }


    @IBAction func Pepperoni(sender: AnyObject) {
        if count<5 {
            cade1 = "Pep"
            PizzaAux.ingredientes=PizzaAux.ingredientes+" "+cade1
            resuIngred.text = PizzaAux.ingredientes
            count=count+1
        }
    }
    
    @IBAction func Pavo(sender: AnyObject) {
        if count<5 {
            cade1 = "Pav"
            PizzaAux.ingredientes=PizzaAux.ingredientes+" "+cade1
            resuIngred.text = PizzaAux.ingredientes
            count=count+1
        }
    }

    @IBAction func Salchicha(sender: AnyObject) {
        if count<5 {
            cade1 = "Sal"
            PizzaAux.ingredientes=PizzaAux.ingredientes+" "+cade1
            resuIngred.text = PizzaAux.ingredientes
            count=count+1
        }
    }

    @IBAction func Aceituna(sender: AnyObject) {
        if count<5 {
            cade1 = "Ace"
            PizzaAux.ingredientes=PizzaAux.ingredientes+" "+cade1
            resuIngred.text = PizzaAux.ingredientes
            count=count+1
        }
    }

    @IBAction func Cebolla(sender: AnyObject) {
        if count<5 {
            cade1 = "Ceb"
            PizzaAux.ingredientes=PizzaAux.ingredientes+" "+cade1
            resuIngred.text = PizzaAux.ingredientes
            count=count+1
        }
    }
 
    @IBAction func Piña(sender: AnyObject) {
        if count<5 {
            cade1 = "Piñ"
            PizzaAux.ingredientes=PizzaAux.ingredientes+" "+cade1
            resuIngred.text = PizzaAux.ingredientes
            count=count+1
        }
    }

}
