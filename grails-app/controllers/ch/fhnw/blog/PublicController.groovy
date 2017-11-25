package ch.fhnw.blog

class PublicController {

    def index() {
        respond Post.list(params)
    }

    def show(Post post) {
        respond post
    }
}
