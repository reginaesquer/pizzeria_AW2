//
//  InterfaceController.swift
//  Pizzeria_AW WatchKit Extension
//
//  Created by Vital Sistemas on 22/12/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    var valorContexto = Pedido ()
    @IBAction func accionChica() {
        next("Chica")
    }
    @IBAction func accionMediana() {
        next("Mediana")
    }
    @IBAction func accionGrande() {
        next("Grande")
    }
    
    func next (t : String) {
        valorContexto.tamaño = t
        var identificador = "IdentificadorModifica"
        if (!valorContexto.ultimo){
            identificador = "IdentificadorMasa"
        }
        pushControllerWithName(identificador, context: valorContexto)
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        valorContexto = context as! Pedido
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
