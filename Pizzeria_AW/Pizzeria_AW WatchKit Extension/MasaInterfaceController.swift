//
//  MasaInterfaceController.swift
//  Pizzeria_AW
//
//  Created by Vital Sistemas on 22/12/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//

import WatchKit
import Foundation


class MasaInterfaceController: WKInterfaceController {
    var valorContexto : Pedido = Pedido()
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        valorContexto = context as! Pedido
        
    }

    @IBAction func accionDelgada() {
        next("Delgada")
    }
    @IBAction func accionCrujiente() {
        next("Crujiente")
    }
    @IBAction func accionGruesa() {
        next("Gruesa")
    }
    func next (m : String) {
        valorContexto.masa = m
        
        var identificador = "IdentificadorModifica"
        if (!valorContexto.ultimo){
            identificador = "IdentificadorQueso"
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
