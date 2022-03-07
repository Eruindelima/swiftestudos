//
//
//protocol CanFly{
//    func fly()
//}
//
//
//class Bird {
//
//    var isFamale = true
//
//    func layEgg() {
//        if isFamale {
//            print("The bird makes a new in a shell.")
//        }
//    }
//
//    func fly(){
//        print("The bird flaps its wings and lifts off into the skay.")
//    } ele não irá mais o método fly na classe fpois agora ele pode ser usado na protocol e pode ser usado em qualquer lugar.
//}
//
//class Eagle: Bird, CanFly {
//
//    func fly() {
//        print("The eagle flaps its wings and lifts off into the skay.")
//    }
//
//    func soar() {
//        print("The eagle glides in the air using air currents.")
//    }
//}
//
//class Penguin: Bird {
//
//    func swim() {
//        print("The penguin paddles through the water.")
//    }
//}
//
//struct FlyingMuseum  {
//    func flyingDemo(flyingObject: CanFly){
//        flyingObject.fly()
//    }
//}
//
//struct AirPlane: CanFly {
//    func fly() {
//        print("The airplane uses its engine to lift off into the air.")
//    }
//}
//
//let myEagle = Eagle()
////myEagle.fly()
////myEagle.layEgg()
////myEagle.soar()
////
////
//let myPenguin = Penguin()
//let myPlane = AirPlane()
//myPlane.fly()
//
//myPenguin.layEgg()
//myPenguin.swim()
////myPenguin.fly() // Pinguin não pode voar
//
//
//let museun = FlyingMuseum()
//museun.flyingDemo(flyingObject: myEagle)
//
