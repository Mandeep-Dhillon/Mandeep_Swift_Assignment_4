
/*
 name the playground file: FirstName_Swift_Assignment_4

 name the repo file: FirstName_Swift_Assignment_4

 Objective: To demonstrate understanding of protocols and class implementation in Swift by creating a model for managing various features of a camping trailer.

 Instructions: You are tasked with creating a Swift program that models a camping trailer and its different systems using protocols and a class. The program should define protocols for managing the trailer's water system, electricity system, climate control, and entertainment system, each with specific properties and methods. Additionally, implement a class representing a camping trailer that conforms to these protocols.

 Requirements: Define any 2 of the 5 protocols, each protocol has:

 1 property related to the specific system.

 2 methods for managing or interacting with the system.

 Implement a class named Camper that conforms to any 2 of the 5 protocols.

 Ensure the class includes appropriate properties and methods to fulfill the requirements of each protocol.

 Protocols: (Define any 2 the following protocols)

 Trailer Property: brand (String) Methods: startEngine(), stopEngine()
 WaterSystem Property: waterCapacity (Double) Methods: fillWaterTank(), drainWaterTank()
 ElectricitySystem Property: batteryLevel (Double) Methods: chargeBattery(), checkBatteryLevel()
 ClimateControl Property: temperature (Double) Methods: setTemperature(_ temperature: Double), adjustFanSpeed()
 EntertainmentSystem Property: hasTV (Bool) Methods: turnOnTV(), turnOffTV()
 Just like we did in class the Camper class must conform to the protocols you have adopted.

 write test code to demonstrate the functionality of the Camper class
*/

// create two protocols Trailer and ElectricitySystem
protocol Trailer {
    var brand: String { get set }
    
    func startEngine() -> String
    func stopEngine() -> String
}

protocol ElectricitySystem {
    var batteryLevel: Double { get set }
    
    func chargeBattery() -> String
    func checkBatteryLevel() -> String
}

//create a class Camper that adopt the protocols
class Camper: Trailer, ElectricitySystem {
    var brand: String
    var batteryLevel: Double
    
    init(brand: String, batteryLevel: Double) {
        self.brand = brand
        self.batteryLevel = batteryLevel
    }

    func startEngine() -> String {
        if batteryLevel > 0 {
            return "Starting the engine"
        } else {
            return "Cannot start engine: battery level is low"
        }
    }
    
    func stopEngine() -> String {
        return "Stopping the engine"
    }
    
    func chargeBattery() -> String {
        if batteryLevel < 100 {
            self.batteryLevel += 1 // Charging the battery increases its level by 1%
            return "Charging the battery"
        } else {
            return "Battery is already fully charged"
        }
    }
    
    func checkBatteryLevel() -> String {
        if batteryLevel < 20 {
            return "Battery level is low (\(batteryLevel)%)"
        } else {
            return "Battery level is normal (\(batteryLevel)%)"
        }
    }
}

var camper = Camper(brand: "My Camper", batteryLevel: 20.0)

// Calling the methods
print(camper.startEngine())
print(camper.stopEngine())
print(camper.chargeBattery())
print(camper.checkBatteryLevel())
