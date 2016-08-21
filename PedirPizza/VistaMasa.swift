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
    
    @IBOutlet weak var resuMasa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultado:String = cade1
        let sigVista = segue.sourceViewController as! ViewController
        print(" + "+resultado)
        sigVista.cadeMasa = resultado
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func Delgada(sender: AnyObject) {
        cade1 = "Delgada"
        resuMasa.text = "Masa: "+cade1
    }
    @IBAction func Crujiente(sender: AnyObject) {
        cade1 = "Crujiente"
        resuMasa.text = "Masa: "+cade1
    }
    @IBAction func Gruesa(sender: AnyObject) {
        cade1 = "Gruesa"
        resuMasa.text = "Masa: "+cade1

    }
}
