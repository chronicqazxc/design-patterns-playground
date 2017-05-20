// Wayne

import UIKit

public class ViewController: UIViewController {

    lazy private var countLabel: UILabel = {
        let label = UILabel(frame: CGRect.zero)
        label.layer.borderColor = UIColor.gray.cgColor
        label.layer.borderWidth = 1.0
        label.layer.cornerRadius = 5.0
        label.layer.masksToBounds = true
        label.textAlignment = .center
        return label
    }()
    
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
        
        let labelHorizontal = NSLayoutConstraint(item: countLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        let labelWidth = NSLayoutConstraint(item: countLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 100)
        let labelHeight = NSLayoutConstraint(item: countLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 50)
        let labelVertical = NSLayoutConstraint(item: countLabel, attribute: .bottom, relatedBy: .equal, toItem: button, attribute: .top, multiplier: 1, constant: 0)
        
        let buttonHorizontal = NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0)
        let buttonVertical = NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0)
        let buttonWidth = NSLayoutConstraint(item: button, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 100)
        let buttonHeight = NSLayoutConstraint(item: button, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 50)
        
        view.addConstraints([
            labelHorizontal,
            labelVertical,
            labelWidth,
            labelHeight,
            buttonHorizontal,
            buttonVertical,
            buttonWidth,
            buttonHeight
            ])

        view.backgroundColor = UIColor.white
        
        print(Bundle.main)
    }
    
    @objc private func clicked(sender: AnyObject) {
        count = count + 1
    }
}
