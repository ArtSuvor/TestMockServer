//
//  AllCommentResponse.swift
//  
//
//  Created by Art on 02.07.2022.
//

import Vapor

struct AllCommentResponse: Content {
    let userId: Int
    let commentId: Int
    let commentText: String
}
