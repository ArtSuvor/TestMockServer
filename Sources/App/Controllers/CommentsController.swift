//
//  CommentsController.swift
//  
//
//  Created by Art on 02.07.2022.
//

import Vapor

final class CommentsController {
    func getAllCommets(_ req: Request) throws -> EventLoopFuture<[AllCommentResponse]> {
        let firstComment = AllCommentResponse(userId: 123, commentText: "adfasdfk")
        let secondComment = AllCommentResponse(userId: 12, commentText: "asfaskheudkfajshd jdshahfdjk")
        let allComments = [firstComment, secondComment]
        
        return req.eventLoop.future(allComments)
    }
    
    func addComment(_ req: Request) throws -> EventLoopFuture<AddCommentResponse> {
        guard let _ = try? req.content.decode(AddCommentRequest.self) {
            let errorResponse = AddCommentResponse(result: 0, resultMessage: "Error")
            return req.eventLoop.future(errorResponse)
        }
        
        let response = AddCommentResponse(result: 1, resultMessage: "Success")
        return req.eventLoop.future(response)
    }
}

