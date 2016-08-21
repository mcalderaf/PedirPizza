//
//  ViewController.swift
//  PedirPizza
//
//  Created by Marisela Caldera on 20/08/16.
//  Copyright © 2016 itchii. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var cadeTama: String = ""
    var cadeMasa: String = ""
    var cadeQueso: String = ""
    var cadeIng: String = ""

    @IBOutlet weak var resultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        resultado.text = "Pedido: "+cadeTama+" "+cadeMasa+" "+cadeQueso+" "+cadeIng
        print("valor"+cadeTama+" "+cadeMasa+" "+cadeQueso+" "+cadeIng)
    }

    @IBAction func HacerPedido(sender: AnyObject) {
        if (cadeTama=="" || cadeMasa=="" || cadeQueso=="" || cadeIng==""){
            resultado.text="Falta información, checar"
        }
        else {
            resultado.text="Pedido envíado... Favor de esperar"
        }
        
    }
}

