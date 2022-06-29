import Vapor

let authController = AuthController()

func routes(_ app: Application) throws {
    app.post("register", use: authController.register)
    app.post("login", use: authController.login)
    app.post("logout", use: authController.logout)
    app.post("changedata", use: authController.changeData)
}
