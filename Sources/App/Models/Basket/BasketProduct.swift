//
//  BasketProduct.swift
//  
//
//  Created by Art on 06.08.2022.
//

import Foundation
import Vapor

struct BasketProduct: Content {
    let id: Int
    let name: String
    let count: Int
}
