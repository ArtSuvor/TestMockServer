//
//  ChangeDataResponse.swift
//  
//
//  Created by Art on 29.06.2022.
//

import Vapor

struct ChangeDataResponse: Content {
    let result: Int
    let errorMessage: String?
}
