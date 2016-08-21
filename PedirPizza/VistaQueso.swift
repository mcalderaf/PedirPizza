//
//  VistaQueso.swift
//  PedirPizza
//
//  Created by Marisela Caldera on 21/08/16.
//  Copyright © 2016 itchii. All rights reserved.
//

import UIKit

class VistaQueso: UIViewController {
    var cade1: String = ""
    
    @IBOutlet weak var resultaQueso: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        let resultado:String = cade1
        let sigVista = segue.sourceViewController as! ViewController
        print(" + "+resultado)
        sigVista.cadeQueso = resultado
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func Mozarela(sender: AnyObject) {
        cade1 = "Mozarela"
        resultaQueso.text = "Queso: "+cade1
    }
    
    @IBAction func Cheddar(sender: AnyObject) {
        cade1 = "Cheddar"
        resultaQueso.text = "Queso: "+cade1
    }
    
    @IBAction func Parmesano(sender: AnyObject) {
        cade1 = "Parmesano"
        resultaQueso.text = "Queso: "+cade1
    }
    
    @IBAction func SinQueso(sender: AnyObject) {
        cade1 = "SinQueso"
        resultaQueso.text = "Queso: "+cade1
    }

}
