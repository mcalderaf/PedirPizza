//
//  ViewController.swift
//  PedirPizza
//
//  Created by Marisela Caldera on 20/08/16.
//  Copyright © 2016 itchii. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var PizzaAux:Pizza = Pizza()

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
        resultado.text = PizzaAux.tamaño+" "+PizzaAux.masa+"\n "+PizzaAux.queso+"\n "+PizzaAux.ingredientes
        print("valor "+PizzaAux.tamaño+" "+PizzaAux.masa+" "+PizzaAux.queso+" "+PizzaAux.ingredientes)
    }

  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
   //     let sigVista = segue.destinationViewController as! ViewController
     //   sigVista.PizzaAux = Pizza.init()
    if segue.identifier == "IdTamaño" {
        let segundaVista:VistaTamano = segue.destinationViewController as! VistaTamano
        segundaVista.PizzaAux = PizzaAux
        //secondView.delegate = self
    }else if segue.identifier == "IdMasa" {
        let tercerVista:VistaMasa = segue.destinationViewController as! VistaMasa
        tercerVista.PizzaAux = PizzaAux
        //doughView.delegate = self
    }else if segue.identifier == "IdQueso" {
        let cuartaVista:VistaQueso = segue.destinationViewController as! VistaQueso
        cuartaVista.PizzaAux = PizzaAux
        //cheeseView.delegate = self
    }else if segue.identifier == "IdIngredientes" {
        let quintaVista:VistaIngredientes = segue.destinationViewController as! VistaIngredientes
        quintaVista.PizzaAux = PizzaAux
        //ingredientsView.delegate = self
    }
  }
    
    @IBAction func HacerPedido(sender: AnyObject) {
        if (PizzaAux.tamaño=="" || PizzaAux.masa=="" || PizzaAux.queso=="" || PizzaAux.ingredientes==""){
            resultado.text="Falta información, checar"
        }
        else {
            resultado.text="Pedido envíado... Favor de esperar"
        }
        
    }
    @IBAction func iniciarPedido(sender: AnyObject) {
        PizzaAux.tamaño=""
        PizzaAux.masa=""
        PizzaAux.queso=""
        PizzaAux.ingredientes=""
        resultado.text="Inicia selección"
    }
}

