import Foundation


protocol Car {
    var carModel: String {get set}
    var year: Int {get set}
    var trunkVolume: Int {get set}
    
    func putInTrunk()
    func engine()
}

extension Car {
    func putInTrunk() {}
}

extension Car {
    func engine() {}
}


// first class
class TrunkCar: Car {
    var carModel: String
    var year: Int
    var trunkVolume: Int
    
    // special properties
    let loadCapacity: LoadCapacityEnum
    let numberOfPallets: NumberOfPalletsEnum
    
    enum LoadCapacityEnum: Int {
        case oneT = 1
        case twoT = 2
        case threeT = 3
        case fiveT = 5
        case sevenT = 7
    }
    
    enum NumberOfPalletsEnum: Int {
        case fourP = 4
        case sixP = 6
        case eightP = 8
    }
    
    enum EngineMode {
        case engineIsOn 
        case engineIsOff
    }
    
    enum WindowsMode {
        case windowsOpen
        case windowsClose
    }
    
    func putInTrunk(goodsVolume: Int) -> String {
        
        if goodsVolume < self.trunkVolume {
            let difference = self.trunkVolume - goodsVolume
            return "Available \(difference) units of volume."
        } else if goodsVolume > self.trunkVolume {
            let difference = goodsVolume - self.trunkVolume
            return "You need to withdraw \(difference) units of occupied volume."
        } else {
            return "Trunk is fulled."
        }
        
    }
    
    func engine(engineMode: EngineMode) {
        
        switch engineMode {
            case .engineIsOn:
                print("\(self.carModel) truck engine on.")
            case .engineIsOff:
                print("\(self.carModel) truck engine off.")
        }
        
    }
    
    func windows(windowsMode: WindowsMode) {
        
        switch windowsMode {
            case .windowsOpen:
                print("\(self.carModel) truck windows open.")
            case .windowsClose: 
                print("\(self.carModel) truck windows closed.")
        }
        
    }
        
    init(carModel: String, year: Int, trunkVolume: Int, loadCapacity: LoadCapacityEnum, numberOfPallets: NumberOfPalletsEnum) {
        self.carModel = carModel
        self.year = year
        self.trunkVolume = trunkVolume
        self.loadCapacity = loadCapacity
        self.numberOfPallets = numberOfPallets
    }
}
        
        
// second class
class SportCar: Car {
    var carModel: String
    var year: Int
    var trunkVolume: Int
        
    // special properties
    let maxSpeed: Int
    let type: String
        
    enum EngineMode {
        case engineIsOn 
        case engineIsOff
    }
        
    enum WindowsMode {
        case windowsOpen
        case windowsClose
    }
        
    func putInTrunk(goodsVolume: Int) -> String {
            
        if goodsVolume < self.trunkVolume {
            let difference = self.trunkVolume - goodsVolume
            return "Available \(difference) units of volume."
        } else if goodsVolume > self.trunkVolume {
            let difference = goodsVolume - self.trunkVolume
            return "You need to withdraw \(difference) units of occupied volume."
        } else {
            return "Trunk is fulled."
        }
            
    }    
        
    func engine(engineMode: EngineMode) {
            
        switch engineMode {
            case .engineIsOn:
                print("\(self.carModel) sports car engine on.")
            case .engineIsOff:
                print("\(self.carModel) sports car engine off.")
        }
            
    }
        
    func windows(windowsMode: WindowsMode) {
            
        switch windowsMode {
            case .windowsOpen:
                print("\(self.carModel) sports car windows open.")
            case .windowsClose: 
                print("\(self.carModel) sports car windows closed.")
        }
            
    }
        
    func speed(speed: Int) { 
            
        if speed == self.maxSpeed {
            print("You have reached the maximum speed")
        } else if speed > self.maxSpeed {
            print("Emergency stop.")
        } else {
            let difference = self.maxSpeed - speed
            print("\(difference) km / h left before reaching the maximum speed.")
        }
            
    }
        
    init(carModel: String, year: Int, trunkVolume: Int, maxSpeed: Int, type: String) {
        self.carModel = carModel
        self.year = year
        self.trunkVolume = trunkVolume
        self.maxSpeed = maxSpeed
        self.type = type
    }
}
        
extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "Car: \(carModel), year: \(year), trunk volume: \(trunkVolume), load capacity: \(loadCapacity), number of pallets: \(numberOfPallets)."
    }
}
        
extension SportCar: CustomStringConvertible {
    var description: String {
        return "Car: \(carModel), year: \(year), trunk volume: \(trunkVolume), max speed: \(maxSpeed), type: \(type)."
    }
}
