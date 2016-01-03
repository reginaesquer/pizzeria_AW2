//
//  ModicarPedido.swift
//  Pizzeria_AW
//
//  Created by Vital Sistemas on 03/01/16.
//  Copyright © 2016 Vital Sistemas. All rights reserved.
//

import WatchKit
import Foundation


class ModicarPedido: WKInterfaceController {
    var valorContexto : Pedido = Pedido()
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

    @IBAction func modificaTamaño() {
        pushControllerWithName("IdentificadorTamaño", context: valorContexto)
    }
    
    @IBAction func modificaMasa() {
        pushControllerWithName("IdentificadorMasa", context: valorContexto)
    }
    @IBAction func modificaQueso() {
        pushControllerWithName("IdentificadorQueso", context: valorContexto)
        
    }
    @IBAction func modificaIngredientes() {
        pushControllerWithName("IdentificadorIngredientes", context: valorContexto)
        
    }
    @IBAction func confirmarPedido() {
        pushControllerWithName("IdentificadorConfirma", context: valorContexto)
    }
}
