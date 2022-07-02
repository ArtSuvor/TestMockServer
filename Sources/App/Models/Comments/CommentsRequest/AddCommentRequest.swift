//
//  AddCommentRequest.swift
//  
//
//  Created by Art on 02.07.2022.
//

import Vapor

struct AddCommentRequest: Content {
    let userId: Int
    let commentText: String
}
