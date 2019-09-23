//
//  CalificacionesController.swift
//  Navegacion
//
//  Created by MaestroD1 on 9/23/19.
//  Copyright © 2019 MaestroD1. All rights reserved.
//

import Foundation
import UIKit

class CalificacionesController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var materias : [Materia] = []
    override func viewDidLoad() {
        
    }
    
    //Número de secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
    
    //Contenido de la celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMateria")
        celda?.textLabel?.text = materias[indexPath.row].nombre
        return celda!
    }
    
}
