import Vapor

let authController = AuthController()
let commentsController = CommentsController()

func routes(_ app: Application) throws {
    
// MARK: - Auth -
    app.post("register", use: authController.register)
    app.post("login", use: authController.login)
    app.post("logout", use: authController.logout)
    app.post("changedata", use: authController.changeData)
    
// MARK: - Comments -
    app.get("allComments", use: commentsController.getAllCommetns)
    app.post("addComment", use: commentsController.addComment)
    app.post("deleteComment", use: commentsController.deleteComment)
}
