//
//  Materia.swift
//  Navegacion
//
//  Created by MaestroD1 on 9/23/19.
//  Copyright © 2019 MaestroD1. All rights reserved.
//

import Foundation

class Materia {
    var nombre : String?
    var calificacionPrimerParcial : Int?
    var calificacionSegundoParcial : Int?
    var calificacionTercerParcial : Int?
    var calificacionFinal : Int?
    
    init(nombre: String, calificacionPrimerParcial : Int, calificacionSegundoParcial : Int , calificacionTercerParcial : Int, calificacionFinal : Int) {
        self.nombre = nombre
        self.calificacionPrimerParcial = calificacionPrimerParcial
        self.calificacionSegundoParcial = calificacionSegundoParcial
        self.calificacionTercerParcial = calificacionTercerParcial
        self.calificacionFinal = calificacionFinal
    }
}
