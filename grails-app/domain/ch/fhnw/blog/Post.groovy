package ch.fhnw.blog


class Post {

    String title
    String body
    String author
    Date created = new Date()
    Date published

    static constraints = {
        body widget: 'textarea'
    }
    static hasMany = [comments:Comment]

    static mapping = {
        body type: 'text'
    }
}
