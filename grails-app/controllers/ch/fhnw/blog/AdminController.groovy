package ch.fhnw.blog

class AdminController {

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Post.list(params), model:[postCount: Post.count()]
    }



}
