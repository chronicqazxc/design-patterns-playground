import UIKit

public class ViewController: UIViewController {

    private let countLabel: UILabel = UILabel(frame: CGRect.zero)
    
    public private(set) var count: Int = 0 {
        didSet {
            countLabel.text = "\(count)"
        }
    }
    
    public init() {
        super.init(nibName: nil, bundle: nil)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {

        let button = UIButton(type: .system)
        view.addSubview(button)
        button.setTitle("Click", for: .normal)
        button.addTarget(self,
                         action: #selector(ViewController.clicked(sender:)),
                         for: .touchUpInside)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(countLabel)
        countLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let views = ["button" : button,
                     "countLabel" : countLabel]
        let horizontalFormatStringButton = "H:|-[button]-|"
        
        let horizontalConstraintsButton = NSLayoutConstraint.constraints(withVisualFormat: horizontalFormatStringButton,
                                                         options:[] ,
                                                         metrics: nil,
                                                         views: ["button" : button])
        let horizontalFormatStringLabel = "H:|-(150)-[countLabel(100@1000)]-|"
        let horizontalConstraintsLabel = NSLayoutConstraint.constraints(withVisualFormat: horizontalFormatStringLabel,
                                                                   options:[] ,
                                                                   metrics: nil,
                                                                   views: ["countLabel" : countLabel])
        
        let verticalFormatString = "V:|-[countLabel(50)]-(10@1000)-[button]-|"
        let verticalConstraints = NSLayoutConstraint.constraints(withVisualFormat: verticalFormatString,
                                                         options:[] ,
                                                         metrics: nil,
                                                         views: views)

        view.addConstraints([horizontalConstraintsButton,
                             horizontalConstraintsLabel,
                             verticalConstraints].flatMap { $0 })

        view.backgroundColor = UIColor.white
        
        print(Bundle.main)
    }
    
    @objc private func clicked(sender: AnyObject) {
        count = count + 1
    }
}
