//
//  CommentsController.swift
//  
//
//  Created by Art on 02.07.2022.
//

import Vapor

final class CommentsController {
    
// MARK: - getAllCommets -
    func getAllCommetns(_ req: Request) throws -> EventLoopFuture<AllCommentResponse> {
       
        let firstComment = CommentResponse(userId: 123, commentId: 1231, commentText: "adfasdfk")
        let secondComment = CommentResponse(userId: 12, commentId: 12, commentText: "asfaskheudkfajshd jdshahfdjk")
        let allComments = AllCommentResponse(result: [firstComment, secondComment],
                                             errorMessage: nil)
        
        return req.eventLoop.future(allComments)
    }
    
// MARK: - addComment -
    func addComment(_ req: Request) throws -> EventLoopFuture<AddCommentResponse> {
        guard let _ = try? req.content.decode(AddCommentRequest.self) else {
            let errorResponse = AddCommentResponse(result: 0, resultMessage: "Error")
            return req.eventLoop.future(errorResponse)
        }
        
        let response = AddCommentResponse(result: 1, resultMessage: "Success")
        return req.eventLoop.future(response)
    }
    
// MARK: - deleteComment -
    func deleteComment(_ req: Request) throws -> EventLoopFuture<DeleteCommentResponse> {
        guard let _ = try? req.content.decode(DeleteCommentRequest.self) else {
            let errorResponse = DeleteCommentResponse(result: 0, resultMessage: "Error")
            return req.eventLoop.future(errorResponse)
        }
        let response = DeleteCommentResponse(result: 1, resultMessage: "Success")
        return req.eventLoop.future(response)
    }
}
