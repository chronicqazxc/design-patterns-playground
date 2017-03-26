/*:
 [Previous](@previous)
 
 ## Bridging
 
 ### Intent
 *decouple an abstraction from its implementation so that the two can vary independently*
 
 * Abstraction (abstract class)
    defines the abstract interface
    maintains the Implementor reference.
 * RefinedAbstraction (normal class)
    extends the interface defined by Abstraction
 * Implementor (interface)
    defines the interface for implementation classes
 * ConcreteImplementor (normal class)
    implements the Implementor interface
 
 ![Design](Bridge_UML_class_diagram.png)
 
 * Abstraction: RobotControl
 * RefinedAbstraction: BasicRobotController, FullFunctionsRobotController
 * Implementor: Robot
 * ConcreteImplementor: RobotCat, RobotFish
 
 */

import Foundation

let robotCatController = FullFunctionsRobotController(robot: RobotCat())
let robotFishController = BasicRobotController(robot: RobotFish())

for robotController in [robotCatController, robotFishController] as [RobotControl] {
    robotController.moveToNorth()
    robotController.moveToSouth()
    robotController.moveToEast()
    robotController.moveToWest()
}
robotCatController.speak()


/*:
 [Next](@next)
 - - -
 This article uses material from the Wikipedia article ["Bridge pattern"], which is released under the [Creative Commons Attribution-Share-Alike License 3.0].
 
 ["Bridge pattern"]: https://en.wikipedia.org/wiki/Bridge_pattern "Some hover text"
 [Creative Commons Attribution-Share-Alike License 3.0]: https://creativecommons.org/licenses/by-sa/3.0/ ""
 
 */
