//
//  BasketDeleteResponse.swift
//  
//
//  Created by Art on 09.07.2022.
//

import Vapor

struct BasketDeleteResponse: Content {
    let result: Int
    let message: String
}
