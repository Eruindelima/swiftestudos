


//protocol AdvancedLifeSupport {
//    func performCPR()
//}
//
//
//class EmergencyCallHandler {
//    var delegate: AdvancedLifeSupport?
//
//    func assessSituation() {
//        print("Can you  tell me what happened?")
//    }
//
//    func medicalEmergency(){
//        delegate?.performCPR()
//    }
//
//}
//
//struct Paramedic: AdvancedLifeSupport {
//
//    init(handle: EmergencyCallHandler) {
//        handle.delegate = self
//    }
//
//    func performCPR() {
//        print("The paramedic does chest compressions, 30 per second.")
//    }
//}
//
//class Doctor: AdvancedLifeSupport {
//
//    init(handler: EmergencyCallHandler) {
//        handler.delegate = self
//    }
//
//    func performCPR() {
//        print("The paramedic does chest compressions, 30 per second.")
//    }
//
//    func useStethescopes(){
//        print("Listening for heart sounds.")
//    }
//}
//
//class Surgeon: Doctor {
//    override func performCPR() {
//        super.performCPR()
//        print("Sings staying alive by the BeeGees")
//    }
//    func useEletricDrill(){
//        print("wrirr")
//    }
//}
//
//let emilio = EmergencyCallHandler()//emilio atende as ligações
//let angela =  Surgeon(handler: emilio)// pete receberá as notificações de emilio
//
//
//emilio.assessSituation()
//emilio.medicalEmergency()
