//
//  ViewController.swift
//  Gas Blender
//
//  Created by Memo on 23/05/21.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var knob: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let leftSlider = UISlider()
        let centerSlider = UISlider()
        let rightSlider = UISlider()
        let colorSliders = [leftSlider, centerSlider, rightSlider]

        var constraints = [NSLayoutConstraint]()
        for slider in colorSliders {
            slider.translatesAutoresizingMaskIntoConstraints = false
            containerView.addSubview(slider)

            slider.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2))

            constraints.append(slider.widthAnchor.constraint(equalTo: containerView.heightAnchor))
            constraints.append(slider.centerYAnchor.constraint(equalTo: containerView.centerYAnchor))

            slider.backgroundColor = .clear
        }
        constraints.append(leftSlider.centerXAnchor.constraint(equalTo: containerView.centerXAnchor))
        constraints.append(centerSlider.centerXAnchor.constraint(equalTo: containerView.leadingAnchor))
        constraints.append(rightSlider.centerXAnchor.constraint(equalTo: containerView.trailingAnchor))

        NSLayoutConstraint.activate(constraints)
        
        //
//        let rotate = UIRotationGestureRecognizer(target: self, action:     #selector(rotatedView(_:)))

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let rotate = UIRotationGestureRecognizer(target: self, action: #selector(rotatedView))
        knob.isUserInteractionEnabled = true
        knob.addGestureRecognizer(rotate)
    }
    
//    var rotate = CGFloat()
    
    @objc
    func rotatedView(_ sender: UIRotationGestureRecognizer) {
//        if sender.state == .began {
//            print("begin")
//        } else if sender.state == .changed {
//            print("changing")
//        } else if sender.state == .ended {
//            print("end")
//        }
        knob.transform = knob.transform.rotated(by: sender.rotation/10)
    }
    
//    @IBAction func rotateAction(_ sender: Any) {
//        rotate += 0.5
//        if rotate > .pi {
//            rotate = 0
//        }
//        print(rotate)
//        knob.transform = knob.transform.rotated(by: rotate)
//    }
}

