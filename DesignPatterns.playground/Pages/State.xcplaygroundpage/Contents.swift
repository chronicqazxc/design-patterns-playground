
/*:
 [Previous](@previous)
 
 ## State
 
 ### Intent
 The state pattern is a behavioral software design pattern that implements a state machine in an object-oriented way. With the state pattern, a state machine is implemented by implementing each individual state as a derived class of the state pattern interface, and implementing state transitions by invoking methods defined by the pattern's superclass.
 
 The state pattern can be interpreted as a strategy pattern which is able to switch the current strategy through invocations of methods defined in the pattern's interface.
 
 This pattern is used in computer programming to encapsulate varying behavior for the same object based on its internal state. This can be a cleaner way for an object to change its behavior at runtime without resorting to large monolithic conditional statements[1]:395 and thus improve maintainability.[2]
 
 ![Design](State_Design_Pattern_UML_Class_Diagram.png)
 
 */

let lamp = Lamp()

for _ in 1...42 {
    print(lamp.stateDescription)
    lamp.switchLight()
}

/*:
 [Next](State)
 - - -
 This article uses material from the Wikipedia article ["State pattern"], which is released under the [Creative Commons Attribution-Share-Alike License 3.0].
 
 ["State pattern"]: https://en.wikipedia.org/wiki/State_pattern "Some hover text"
 [Creative Commons Attribution-Share-Alike License 3.0]: https://creativecommons.org/licenses/by-sa/3.0/ ""
 
 */
