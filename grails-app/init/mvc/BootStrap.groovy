package mvc

import grails.util.Environment
import ch.fhnw.blog.Post

class BootStrap {

    def init = { servletContext ->
        if (Environment.current == Environment.PRODUCTION) {
            return
        }

        Room windowRoom = save(new Room(name: "1.333", max: 32))
        Room cornerRoom = save(new Room(name: "1.331", max: 42))

        Person dierk = save(new Person(firstName: "Dierk", lastName: "König", email:"dierk.koenig@fhnw.ch"))

        Date today = new Date().clearTime();
        save(new Booking(booker: dierk, room: windowRoom, date: today - 1, slot: Booking.AM))
        save(new Booking(booker: dierk, room: windowRoom, date: today,     slot: Booking.AM))
        save(new Booking(booker: dierk, room: windowRoom, date: today + 1, slot: Booking.AM))
        save(new Booking(booker: dierk, room: cornerRoom, date: today ,    slot: Booking.AM))

        //Existing Blog post
        save(new Post(title: "The State of UX for 2018", body: "When 2017 is almost over it’s time to look ahead and predict how the digital experience will evolve over the next 12 months.\n" +
                "In this article, I’ll overview the most significant changes in the digital world which we saw during 2017 and the trends we should be aware of to stay ahead of the curve in design and development in 2018.\n" +
                "1. Simpler Navigation\n" +
                "Navigation experience was a hot topic among many designers during 2017. Designers strive to create an effortless experience and navigation plays a key role in that.\n" +
                "Linear Navigation\n" +
                "In the attempt to simplify navigation experience many apps and website focus on creating linear (or step-by-step) navigation experience. Apps and services which utilize this type of navigation put users in linear user flow when each next step looks like a logical continuation of the previous one. This type of navigation is especially good for goal-driven apps (such as Uber) and e-commerce websites (e.g., Amazon, Best Buy) where users have a goal they want to accomplish.\n" +
                "Voice User Interfaces\n" +
                "Voice user interfaces (VUIs) become a good alternative to graphical users interfaces. Significant improvement of natural language process made it possible to use voice commands for different purposes.",
                author: "Viviane", created: today -3, published: today -2))
        save(new Post(title: "Color of the Year 2018: Inventive and imaginative, Ultra Violet lights the way to what is yet to come.", body: "Complex and contemplative, Ultra Violet suggests the mysteries of the cosmos, the intrigue of what lies ahead, and the discoveries beyond where we are now. The vast and limitless night sky is symbolic of what is possible and continues to inspire the desire to pursue a world beyond our own.\n" +
                "\n" +
                "Enigmatic purples have also long been symbolic of counterculture, unconventionality, and artistic brilliance. Musical icons Prince, David Bowie, and Jimi Hendrix brought shades of Ultra Violet to the forefront of western pop culture as personal expressions of individuality. Nuanced and full of emotion, the depth of PANTONE 18-3838 Ultra Violet symbolizes experimentation and non-conformity, spurring individuals to imagine their unique mark on the world, and push boundaries through creative outlets.\n" +
                "\n" +
                "Historically, there has been a mystical or spiritual quality attached to Ultra Violet. The color is often associated with mindfulness practices, which offer a higher ground to those seeking refuge from today’s over-stimulated world. The use of purple-toned lighting in meditation spaces and other gathering places energizes the communities that gather there and inspire connection.",author: "Viviane", created: today -5, published: today -4))
        save(new Post(title: "Latest Graphic Crazes", body: "In the era of digital art, graphic design trends can evaporate as quickly as they emerged. What has been modern for the past few years may look entirely outdated in 2018. While some trends have stood the test of time, others have vanished in the blink of an eye only to make room for new modern looks. So, if you are looking for an antonym of boring, this would be – graphic design trends 2018.",author: "Viviane", created: today -8, published: today -7))

    }


    static save(domainObject) {
        domainObject.save(failOnError: true)
    }

    def destroy = {
    }
}
