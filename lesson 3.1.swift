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



