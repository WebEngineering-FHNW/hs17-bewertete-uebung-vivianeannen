package ch.fhnw.blog


class Post {

    String title
    String body
    String author
    Date created = new Date()
    Date published

    static constraints = {
    }

    static mapping = {
        body type: 'text'
    }
}
