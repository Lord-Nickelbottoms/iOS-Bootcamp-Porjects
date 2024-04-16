protocol CanFly {
    func fly()
}

class Bird {
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a sheel")
        }
    }
}

class Eagle: Bird, CanFly {
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
    
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
}

class Penguin: Bird {
    
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum {
    
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("The aiplane uses its engine to lift off into the air.")
    }
}

let myEagle = Eagle()
//myEagle.fly()
//myEagle.layEgg()
////myEagle.soar()
//
//
let penguin = Penguin()
penguin.layEgg()
penguin.swim()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle )

let plane = Airplane()
museum.flyingDemo(flyingObject: plane)
