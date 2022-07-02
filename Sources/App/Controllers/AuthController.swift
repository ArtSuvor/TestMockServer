//
//  AuthController.swift
//  
//
//  Created by Art on 29.06.2022.
//

import Vapor

final class AuthController {
    
// MARK: - login -
    func login(_ req: Request) throws -> EventLoopFuture<LoginResponse> {
        guard let body = try? req.content.decode(LoginRequest.self) else {
            throw Abort(.badRequest)
        }
        let user = UserResponse(id_user: UUID().uuidString,
                                user_login: body.username,
                                user_name: "",
                                user_lastname: "")
        let response = LoginResponse(result: 1,
                                     errorMessage: nil,
                                     user: user)
        return req.eventLoop.future(response)
    }
    
// MARK: - logout -
    func logout(_ req: Request) throws -> EventLoopFuture<LogoutResponse> {
        guard let _ = try? req.content.decode(LogoutRequest.self) else {
            throw Abort(.badRequest)
        }
        let response = LogoutResponse(result: 1,
                                      errorMessage: nil)
        return req.eventLoop.future(response)
    }
    
// MARK: - register -
    func register(_ req: Request) throws -> EventLoopFuture<RegisterResponse> {
        guard let _ = try? req.content.decode(RegisterRequest.self) else {
            throw Abort(.badRequest)
        }
        let response = RegisterResponse(result: 1,
                                        userMessage: "Register is complete",
                                        errorMessage: nil)
        return req.eventLoop.future(response)
    }
    
    func changeData(_ req: Request) throws -> EventLoopFuture<ChangeDataResponse> {
        guard let _ = try? req.content.decode(ChangeDataRequest.self) else {
            throw Abort(.badRequest)
        }
        let response = ChangeDataResponse(result: 1, errorMessage: nil)
        return req.eventLoop.future(response)
    }
}
