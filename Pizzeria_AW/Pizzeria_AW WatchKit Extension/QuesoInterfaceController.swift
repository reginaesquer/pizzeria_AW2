//
//  QuesoInterfaceController.swift
//  Pizzeria_AW
//
//  Created by Vital Sistemas on 22/12/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//

import WatchKit
import Foundation


class QuesoInterfaceController: WKInterfaceController {
    var valorContexto = Pedido ()
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        valorContexto = context as! Pedido
    }

    @IBAction func accionCheddar() {
        next("Cheddar")
    }
    
    @IBAction func accionMozarella() {
        next ("Mozarella")
    }
    @IBAction func accionParmesano() {
        next ("Parmesano")
    }
    @IBAction func accionSinQueso() {
        next ("Sin Queso")
    }
    func next (q : String) {
        valorContexto.queso = q
        var identificador = "IdentificadorModifica"
        if (!valorContexto.ultimo){
            identificador = "IdentificadorIngredientes"
        }
        pushControllerWithName(identificador, context: valorContexto)
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
