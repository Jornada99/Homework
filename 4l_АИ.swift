import Foundation

// superclass

class Car {
    let carModel: String
    let year: Int
    let trunkVolume: Int
    var engineOn: Bool
    var windowsOpen: Bool
    let filledTrunkVolume: Int
    
    init(carModel: String, year: Int, trunkVolume: Int, engineOn: Bool, windowsOpen: Bool, filledTrunkVolume: Int) {
        self.carModel = carModel
        self.year = year
        self.trunkVolume = trunkVolume
        self.engineOn = engineOn
        self.windowsOpen = windowsOpen
        self.filledTrunkVolume = filledTrunkVolume
    }
}

// first subclass

class SportCar: Car {

// new properties
    let maxSpeed: Int
    let type: String
    
   
    enum Mode {
        case engineIsOn 
        case engineIsOff
        case speed(speed: Int) // new special case
    }
        
    mutating func engine(engineMode: Mode) {
        
        switch engineMode {
            case .engineIsOn:
                self.engineOn = false
                print("The engine is switched off.")
            case .engineIsOff:
                self.engineOn = true 
                print("The engine is switched on.")
        }
    }
    
    mutating func windows() {
        if self.windowsOpen == true {
            self.windowsOpen = false
            print("Now the windows are open. Сlose the windows.")
        } else {
            self.windowsOpen = true 
            print("Now the windows are closed. Open the windows.")
        }
    }
    
    func goods() {
        if self.filledTrunkVolume > self.trunkVolume {
            let difference = self.filledTrunkVolume - self.trunkVolume
            print("You need to withdraw \(difference) units of occupied volume.")
        } else if self.filledTrunkVolume < self.trunkVolume {
            let difference = self.trunkVolume - self.filledTrunkVolume
            print("Available \(difference) units of volume.")
        } else {
            print("Trunk is fulled.")
        }
    }
            
    case let .speed(speed): // new special action
        if speed == self.maxSpeed {
            print("You have reached the maximum speed")
                } else if speed > self.maxSpeed {
                    self.engineOn = false
                    print("Emergency stop.")
                }
        }
        
    }
    
    init(carModel: String, year: Int, trunkVolume: Int, engineOn: Bool, windowsOpen: Bool, filledTrunkVolume: Int, maxSpeed: Int,
    type: String) {
        self.maxSpeed = maxSpeed
        self.type = type
        super.init(carModel: carModel, year: year, trunkVolume: trunkVolume, engineOn: engineOn, windowsOpen: windowsOpen, filledTrunkVolume: filledTrunkVolume)
    }
    
}


// second subclass

class TrunkCar: Car {

// new properties
    let loadCapacity: loadCapacity
    let numberOfPallets: numberOfPallets
    
    enum loadCapacity {
        case oneT = 1
        case twoT = 2
        case threeT = 3
        case fiveT = 5
        case sevenT = 7
    }
    
    enum numberOfPallets {
        case fourP = 4
        case sixP = 6
        case eightP = 8
    }
    
    enum Mode {
        case engineIsOn 
        case engineIsOff
        case сlassCar(loadCapacity) // new special case
    }
    
    mutating func engine(engineMode: Mode) {
        
        switch engineMode {
            case .engineIsOn:
                self.engineOn = false
                print("The engine is switched off.")
            case .engineIsOff:
                self.engineOn = true 
                print("The engine is switched on.")
        }
    }
    
    mutating func windows() {
        if self.windowsOpen == true {
            self.windowsOpen = false
            print("Now the windows are open. Сlose the windows.")
        } else {
            self.windowsOpen = true 
            print("Now the windows are closed. Open the windows.")
        }
    }
    
    func goods() {
        if self.filledTrunkVolume > self.trunkVolume {
            let difference = self.filledTrunkVolume - self.trunkVolume
            print("You need to withdraw \(difference) units of occupied volume.")
        } else if self.filledTrunkVolume < self.trunkVolume {
            let difference = self.trunkVolume - self.filledTrunkVolume
            print("Available \(difference) units of volume.")
        } else {
            print("Trunk is fulled.")
        }
    }
    
    func classCar(classCar: Mode) {
        
        switch classCar {
            case .oneT:
                print("Class 1.")
            case .twoT:
                print("Class 2.")
            case .threeT:
                print("Class 3.")
            case .fiveT:
                print("Class 4.")
            case .sevenT:
                print("Class 5.")
        }
    }
    
    init(carModel: String, year: Int, trunkVolume: Int, engineOn: Bool, windowsOpen: Bool, filledTrunkVolume: Int, loadCapacity: loadCapacity,
    numberOfPallets: numberOfPallets) {
        self.loadCapacity = loadCapacity
        self.numberOfPallets = numberOfPallets
        super.init(carModel: carModel, year: year, trunkVolume: trunkVolume, engineOn: engineOn, windowsOpen: windowsOpen, filledTrunkVolume: filledTrunkVolume) 
    }
    
}

