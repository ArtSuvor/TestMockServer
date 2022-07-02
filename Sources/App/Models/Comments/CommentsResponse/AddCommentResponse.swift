//
//  AddCommentResponse.swift
//  
//
//  Created by Art on 02.07.2022.
//

import Vapor

struct AddCommentResponse: Content {
    let result: Int
    let resultMessage: String?
}
