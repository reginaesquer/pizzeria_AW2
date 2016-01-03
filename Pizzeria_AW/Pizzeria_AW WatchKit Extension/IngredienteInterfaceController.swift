//
//  IngredienteInterfaceController.swift
//  Pizzeria_AW
//
//  Created by Vital Sistemas on 22/12/15.
//  Copyright © 2015 Vital Sistemas. All rights reserved.
//

import WatchKit
import Foundation


class IngredienteInterfaceController: WKInterfaceController {
    var count = 0
    @IBOutlet var peperoni: WKInterfaceSwitch!
    @IBOutlet var jamon: WKInterfaceSwitch!
    @IBOutlet var salchica: WKInterfaceSwitch!
    @IBOutlet var cebolla: WKInterfaceSwitch!
    @IBOutlet var jalapeño: WKInterfaceSwitch!
    @IBOutlet var salami: WKInterfaceSwitch!
    @IBOutlet var piña: WKInterfaceSwitch!
    @IBOutlet var pimiento: WKInterfaceSwitch!
    @IBOutlet var queso: WKInterfaceSwitch!
    
    var peperoniStatus = false
    var jamonStatus = false
    var salchichaStatus = false
    var cebollaStatus = false
    var jalapeñoStatus = false
    var salamiStatus = false
    var piñaStatus = false
    var pimientoStatus = false
    var quesoStatus = false
    
    var valorContexto : Pedido = Pedido()
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        valorContexto = context as! Pedido
    }

    @IBAction func cambiaPeperoni(value: Bool) {
        peperoniStatus = value
        if (value) {
            count++
        } else {
            count--
        }
    }
    @IBAction func cambiaJamon(value: Bool) {
        jamonStatus = value
        if (value) {
            count++
        } else {
            count--
        }
    }
    @IBAction func cambiaSalchicha(value: Bool) {
        salchichaStatus = value
        if (value) {
            count++
        } else {
            count--
        }
    }
    @IBAction func cambiaCebolla(value: Bool) {
        cebollaStatus = value
        if (value) {
            count++
        } else {
            count--
        }
    }
    
    @IBAction func cambiaJalapeño(value: Bool) {
        jalapeñoStatus = value
        if (value) {
            count++
        } else {
            count--
        }
    }
    
    @IBAction func cambiaSalami(value: Bool) {
        salamiStatus = value
        if (value) {
            count++
        } else {
            count--
        }
    }
    @IBAction func cambiaPiña(value: Bool) {
        piñaStatus = value
        if (value) {
            count++
        } else {
            count--
        }
    }
    @IBAction func cambiaPimiento(value: Bool) {
        pimientoStatus = value
        if (value) {
            count++
        } else {
            count--
        }
    }
    @IBAction func cambiaQueso(value: Bool) {
        quesoStatus = value
        if (value) {
            count++
        } else {
            count--
        }
    }
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func accionConfirmar() {
        if (count <= 5) {
            var x = 1
            if (peperoniStatus) {
                valor(x,s: "Peperoni")
                x++
            }
            if (jamonStatus) {
                valor(x,s:"Jamón")
                x++
            }
            if (salchichaStatus) {
                valor(x,s:"Salchicha")
                x++
            }
            if (cebollaStatus) {
                valor(x,s:"Cebolla")
                x++
            }
            if (jalapeñoStatus) {
                valor(x,s:"Jalapeño")
                x++
            }
            if (salamiStatus) {
                valor(x,s:"Salami")
                x++
            }
            if(piñaStatus) {
                valor(x,s:"Piña")
                x++
            }
            if(pimientoStatus) {
                valor(x,s:"Pimiento")
                x++
            }
            if (quesoStatus) {
                valor(x,s:"Extra Queso")
                x++
            }
            
            if (x > 1) {
                
                var identificador = "IdentificadorModifica"
                if (!valorContexto.ultimo){
                    identificador = "IdentificadorConfirma"
                    valorContexto.ultimo = true
                    
                }
                pushControllerWithName(identificador, context: valorContexto)
            }
        }
    }
    
    func valor (x : Int, s : String) {
        if (x == 1) {
            valorContexto.ing1 = s
        } else if (x == 2) {
            valorContexto.ing2 = s
        } else if (x == 3) {
            valorContexto.ing3 = s
        } else if (x == 4) {
            valorContexto.ing4 = s
        } else {
            valorContexto.ing5 = s
        }
    }

}
