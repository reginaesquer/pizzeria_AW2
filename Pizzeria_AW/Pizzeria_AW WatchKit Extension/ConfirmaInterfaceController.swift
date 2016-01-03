//
//  ConfirmaInterfaceController.swift
//  Pizzeria_AW
//
//  Created by Vital Sistemas on 22/12/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmaInterfaceController: WKInterfaceController {
    @IBOutlet var tamaño: WKInterfaceLabel!

    @IBOutlet var masa: WKInterfaceLabel!
    @IBOutlet var queso: WKInterfaceLabel!
    
    @IBOutlet var ing5: WKInterfaceLabel!
    @IBOutlet var ing4: WKInterfaceLabel!
    @IBOutlet var ing3: WKInterfaceLabel!
    @IBOutlet var ing2: WKInterfaceLabel!
    @IBOutlet var ing1: WKInterfaceLabel!
    var valorContexto : Pedido = Pedido()
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        valorContexto = context as! Pedido
        
        tamaño.setText(valorContexto.tamaño)
        masa.setText(valorContexto.masa)
        queso.setText(valorContexto.queso)
        ing1.setText(valorContexto.ing1)
        ing2.setText(valorContexto.ing2)
        ing3.setText(valorContexto.ing3)
        ing4.setText(valorContexto.ing4)
        ing5.setText(valorContexto.ing5)
        
        
        
        
    }

    @IBAction func modificaPedido() {
        pushControllerWithName("IdentificadorModifica", context: valorContexto)
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
