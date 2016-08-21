//
//  VistaTamano.swift
//  PedirPizza
//
//  Created by Marisela Caldera on 20/08/16.
//  Copyright © 2016 itchii. All rights reserved.
//

import UIKit

class VistaTamano: UIViewController {
    var cade1: String = ""
    
    @IBOutlet weak var resultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resul = cade1
        let sigVista = segue.sourceViewController as! ViewController
        sigVista.cadeTama = resul
    }
    
    @IBAction func Chica(sender: AnyObject) {
        print("Chica")
        cade1 = "Chica"
        resultado.text = "Tamaño: "+cade1
    }
    
    @IBAction func Mediana(sender: AnyObject) {
        print("Mediana")
        cade1 = "Mediana"
        resultado.text = "Tamaño: "+cade1
    }
    
    @IBAction func Grande(sender: AnyObject) {
        print("Grande")
        cade1 = "Grande"
        resultado.text = "Tamaño: "+cade1
    }
}
