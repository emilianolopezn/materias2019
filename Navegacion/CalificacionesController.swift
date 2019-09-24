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
    
    @IBOutlet weak var tvCalificaciones: UITableView!
    var materias : [Materia] = []
    override func viewDidLoad() {
        materias.append(Materia(nombre: "Matematicas", calificacionPrimerParcial: 10, calificacionSegundoParcial: 9, calificacionTercerParcial: 10 , calificacionFinal: 10))
        materias.append(Materia(nombre: "Español", calificacionPrimerParcial: 7, calificacionSegundoParcial: 6, calificacionTercerParcial: 5, calificacionFinal: 7))
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToDetallesMateria" {
            let destino = segue.destination as? DetallesMateriaController
            destino?.materia = materias[tvCalificaciones.indexPathForSelectedRow!.row]
        }
            
        
    }
    
}
