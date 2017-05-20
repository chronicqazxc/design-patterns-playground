import Foundation

public class Car {
    var elements: [Fixable] = [Wheel(), Door()]
    
    private var lastPrepairKilometer: UInt = 0
    
    public private(set) var totalKilometerRuned: UInt = 0 {
        didSet {
            switch totalKilometerRuned - lastPrepairKilometer {
            case 0...1000:
                wheel().status = .good
                door().status = .good
                break
            case 1000...5000:
                wheel().status = .poor
                door().status = .good
                break
            case 5000...10000:
                wheel().status = .poor
                door().status = .poor
                break
            default:
                wheel().status = .bad
                door().status = .bad
                break
            }
        }
    }
    
    public init() { }
    
    public func accept(repair: Repair) {
        lastPrepairKilometer = totalKilometerRuned
        
        for element in elements {
            element.accept(repair: repair)
        }
    }
    
    public func run(kilometer: UInt) {
        totalKilometerRuned += kilometer
    }

    public func status() {
        print("Wheel: \(wheel().status.rawValue) \nDoor: \(door().status.rawValue) ")
    }
    
    func wheel() -> Wheel {
        return elements.filter {
            $0 is Wheel
            }.first as! Wheel
    }
    
    func door() -> Door {
        return elements.filter {
            $0 is Door
            }.first as! Door
    }
    
}
