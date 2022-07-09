//
//  BasketAddRequest.swift
//  
//
//  Created by Art on 09.07.2022.
//

import Vapor

struct BasketAddRequest: Content {
    let productId: Int
}
