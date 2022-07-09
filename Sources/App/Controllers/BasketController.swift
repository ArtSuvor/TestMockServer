//
//  BasketController.swift
//  
//
//  Created by Art on 09.07.2022.
//

import Vapor

final class BasketController {
    func addProduct(_ req: Request) throws -> EventLoopFuture<BasketAddResponse> {
        guard let _ = try? req.content.decode(BasketAddRequest.self) else {
            let errorResponse = BasketAddResponse(result: 0, message: "Error")
            return req.eventLoop.future(errorResponse)
        }
        let response = BasketAddResponse(result: 1, message: "Success")
        return req.eventLoop.future(response)
    }
    
    func deleteProduct(_ req: Request) throws -> EventLoopFuture<BasketDeleteResponse> {
        guard let _ = try? req.content.decode(BasketDeleteRequest.self) else {
            let errorResponse = BasketDeleteResponse(result: 0, message: "Error")
            return req.eventLoop.future(errorResponse)
        }
        let response = BasketDeleteResponse(result: 1, message: "Success")
        return req.eventLoop.future(response)
    }
}
