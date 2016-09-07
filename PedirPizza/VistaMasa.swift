//
//  VistaMasa.swift
//  PedirPizza
//
//  Created by Marisela Caldera on 20/08/16.
//  Copyright © 2016 itchii. All rights reserved.
//

import UIKit

class VistaMasa: UIViewController {
    var cade1: String = ""
    var PizzaAux:Pizza=Pizza()
    
    @IBOutlet weak var resuMasa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado:String = cade1
        let sigVista = segue.destinationViewController as! ViewController
        print(" + "+resultado)
        sigVista.PizzaAux.masa = resultado
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func Delgada(sender: AnyObject) {
        cade1 = "Delgada"
        PizzaAux.masa=cade1
        resuMasa.text = "Masa: "+cade1
    }
    @IBAction func Crujiente(sender: AnyObject) {
        cade1 = "Crujiente"
        PizzaAux.masa=cade1
        resuMasa.text = "Masa: "+cade1
    }
    @IBAction func Gruesa(sender: AnyObject) {
        cade1 = "Gruesa"
        PizzaAux.masa=cade1
        resuMasa.text = "Masa: "+cade1

    }
}
