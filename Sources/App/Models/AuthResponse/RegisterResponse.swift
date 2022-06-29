//
//  RegisterResponse.swift
//  
//
//  Created by Art on 29.06.2022.
//

import Vapor

struct RegisterResponse: Content {
    let result: Int
    let userMessage: String?
    let errorMessage: String?
}
