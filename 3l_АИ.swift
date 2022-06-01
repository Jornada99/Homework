import Foundation 

// first structure

struct SportCar {

    // properties
    let carModel: String
    let year: Int
    let trunkVolume: Int
    var engineOn: Bool
    var windowsOpen: Bool
    let filledTrunkVolume: Int
    
    // methods
    enum EngineMode {
        case engineIsOn 
        case engineIsOff 
    }
        
    func engine(engineMode: EngineMode) {
        
        switch engineMode {
            case .engineIsOn:
                self.engineOn == false
                print("The engine is switched off.")
            case .engineIsOff:
                self.engineOn == true 
                print("The engine is switched on.")
        }
    }
    
    func windows() {
        if self.windowsOpen == true {
            self.windowsOpen == false
            print("Now the windows are open. Сlose the windows.")
        } else {
            self.windowsOpen == true 
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
    
}


// second structure

struct TrunkCar {

    // properties
    let carModel: String
    let year: Int
    let trunkVolume: Int
    var engineOn: Bool
    var windowsOpen: Bool
    let filledTrunkVolume: Int
    
    // methods
    enum Mode {
        case engineIsOn 
        case engineIsOff
        case windowsAreOpened
        case windowsAreClosed
        case noFreeSpace
        case freeSpaceIs
        case needToFreeUp
    }
    
    func mode(carMode: Mode) {
    
        switch carMode {
            case .engineIsOn where engineOn == true:
                engineOn == false
                print("The engine is switched off.")
            case .engineIsOff where engineOn == false:
                engineOn == true 
                print("The engine is switched on.")
            case .windowsAreOpened where windowsOpen == true:
                windowsOpen == false
                print("Now the windows are open. Сlose the windows.")
            case .windowsAreClosed where windowsOpen == false:
                windowsOpen == true
                print("Now the windows are closed. Open the windows.")
            case .noFreeSpace where trunkVolume == filledTrunkVolume:
                print("Trunk is fulled.")
            case .freeSpaceIs where trunkVolume > filledTrunkVolume:
                let difference = trunkVolume - filledTrunkVolume
                print("Available \(difference) units of volume.")
            case .needToFreeUp
                let difference = filledTrunkVolume - trunkVolume
                print("You need to withdraw \(difference) units of occupied volume.")
        }
        
    }
        
}



