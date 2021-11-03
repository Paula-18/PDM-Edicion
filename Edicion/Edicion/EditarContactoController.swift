//
//  EditarContactoController.swift
//  Edicion
//
//  Created by Alumno on 11/2/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class EditarContactoController: UIViewController {
    
    var contacto : Contacto?
    
    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtCorreo: UITextField!
    @IBOutlet weak var txtCelular: UITextField!
    
    var callbackActualizarTVContactos : (() -> Void)?
    
    
    override func viewDidLoad() {
        self.title = "Editar Contacto"
        
        txtCorreo.text = contacto!.correo
        txtNombre.text = contacto!.nombre
        txtCelular.text = contacto!.celular
    }
    
    @IBAction func doTapGuardar(_ sender: Any) {
        contacto!.nombre = txtNombre.text!
        contacto!.correo = txtCorreo.text!
        contacto!.celular = txtCelular.text!
        
        callbackActualizarTVContactos!()
    }
    
}
