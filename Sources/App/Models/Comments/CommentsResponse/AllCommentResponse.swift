//
//  AllCommentResponse.swift
//  
//
//  Created by Art on 02.07.2022.
//

import Vapor

struct AllCommentResponse: Content {
    let result: [CommentResponse]
    let errorMessage: String?
}

struct CommentResponse: Content {
    let userId: Int
    let commentId: Int
    let commentText: String
}
