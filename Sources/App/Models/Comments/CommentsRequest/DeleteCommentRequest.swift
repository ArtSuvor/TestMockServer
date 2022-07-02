//
//  DeleteCommentRequest.swift
//  
//
//  Created by Art on 02.07.2022.
//

import Vapor

struct DeleteCommentRequest: Content {
    let commentId: Int
}
