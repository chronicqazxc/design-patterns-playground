import Foundation

public enum Direction {
    case north, south, east, west
}

public protocol Movable {
    func move(direction: Direction)
}
