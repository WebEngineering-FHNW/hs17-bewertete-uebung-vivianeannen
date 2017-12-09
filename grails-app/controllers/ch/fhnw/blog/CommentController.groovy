package ch.fhnw.blog

import grails.transaction.Transactional

import static org.springframework.http.HttpStatus.CREATED
import static org.springframework.http.HttpStatus.NO_CONTENT

class CommentController {

    //save the created comment
    @Transactional
    def save(Comment comment) {
        if (comment == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (comment.hasErrors()) {
            transactionStatus.setRollbackOnly()
            redirect(controller: "public", action: "show", id: comment.post.id, model: comment.errors)
            return
        }

        comment.save flush:true

        redirect(controller: "public", action: "show", id: comment.post.id)
    }

    //delete the created comment
    @Transactional
    def delete(Comment comment) {

        if (comment == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        comment.delete flush:true

        request.withFormat {
            form multipartForm {
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }
}
