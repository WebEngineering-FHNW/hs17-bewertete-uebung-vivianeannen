package ch.fhnw.blog

class Comment {

    String body
    String author
    Date posted = new Date()

    static belongsTo = [post:Post]

    static constraints = {
        posted(nullable: true)
    }
}
