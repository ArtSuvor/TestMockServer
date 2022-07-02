//
//  DeleteCommentResponse.swift
//  
//
//  Created by Art on 02.07.2022.
//

import Vapor

struct DeleteCommentResponse: Content {
    let result: Int
    let resultMessage: String
}

