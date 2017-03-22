/*:
 ## Strategy
 
 ### Intent
 * defines a family of algorithms,
 * encapsulates each algorithm, and
 * makes the algorithms interchangeable within that family.
 
 ![Design](Strategy_Pattern_in_UML.png)
 */

import UIKit

func validateAllValues(validatables: [Validatable]) {
    // Validate function will reture validate results of each elements.
    assert(validatables.map { $0.validate() }.reduce(true) { $0 && $1 }, "Validate failed")
    
    print("test passed")
}

let email: Value = MyString(value: "chronicqazxc@gmail.com")
let number: Value = MyNumber(value: 0971017040)

if case let (validatableEmail?, validatableNumber?) = (email as? Validatable, number as? Validatable) {
    validateAllValues(validatables: [validatableEmail, validatableNumber])
}

print("My email is \(email.value) and the number is \(number.value)")

/*:
 [Next](State)
  - - -
 This article uses material from the Wikipedia article ["Strategy pattern"], which is released under the [Creative Commons Attribution-Share-Alike License 3.0].
 
 ["Strategy pattern"]: https://en.wikipedia.org/wiki/Strategy_pattern "Some hover text"
 [Creative Commons Attribution-Share-Alike License 3.0]: https://creativecommons.org/licenses/by-sa/3.0/ ""
 
 */
