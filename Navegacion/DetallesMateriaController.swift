///
//  DetallesMateriaController.swift
//  Navegacion
//
//  Created by MaestroD1 on 9/24/19.
//  Copyright © 2019 MaestroD1. All rights reserved.
//

import Foundation
import UIKit

class DetallesMateriaController : UIViewController {
    
    var materia : Materia?
    @IBOutlet weak var lblCalificacionPrimerParcial: UILabel!
    
    @IBOutlet weak var lblCalificacionFinal: UILabel!
    @IBOutlet weak var lblCalificacionTercerParcial: UILabel!
    @IBOutlet weak var lblCalificacionSegundoParcial: UILabel!
    override func viewDidLoad() {
        
        self.title = materia!.nombre!
        
        lblCalificacionPrimerParcial.text = "\( materia!.calificacionPrimerParcial!)"
        lblCalificacionSegundoParcial.text = "\(materia!.calificacionSegundoParcial!)"
        lblCalificacionTercerParcial.text = "\(materia!.calificacionTercerParcial!)"
        lblCalificacionFinal.text = "\(materia!.calificacionFinal!)"
        
    }
    
    
}
