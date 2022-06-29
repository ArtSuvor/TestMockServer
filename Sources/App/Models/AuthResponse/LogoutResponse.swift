//
//  LogoutResponse.swift
//  
//
//  Created by Art on 29.06.2022.
//

import Vapor

struct LogoutResponse: Content {
    let result: Int
    let errorMessage: String?
}
