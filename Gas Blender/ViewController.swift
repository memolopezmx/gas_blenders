//
//  ViewController.swift
//  Gas Blender
//
//  Created by Memo on 23/05/21.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

   
    @IBOutlet weak var contentSlider1: UIView!
    @IBOutlet weak var contentSlider2: UIView!
    
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var knob: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        let leftSlider = UISlider()
//        let centerSlider = UISlider()
//        let rightSlider = UISlider()
//        let colorSliders = [leftSlider, centerSlider, rightSlider]
//
//        var constraints = [NSLayoutConstraint]()
//        for slider in colorSliders {
//            slider.translatesAutoresizingMaskIntoConstraints = false
//            containerView.addSubview(slider)
//
//            slider.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2))
//
//            constraints.append(slider.widthAnchor.constraint(equalTo: containerView.heightAnchor))
//            constraints.append(slider.centerYAnchor.constraint(equalTo: containerView.centerYAnchor))
//
//            slider.backgroundColor = .clear
//        }
//        constraints.append(leftSlider.centerXAnchor.constraint(equalTo: containerView.centerXAnchor))
//        constraints.append(centerSlider.centerXAnchor.constraint(equalTo: containerView.leadingAnchor))
//        constraints.append(rightSlider.centerXAnchor.constraint(equalTo: containerView.trailingAnchor))
//
//        NSLayoutConstraint.activate(constraints)
        
        //
//        let rotate = UIRotationGestureRecognizer(target: self, action:     #selector(rotatedView(_:)))

        
        
        
        setupSlider1()
        setupSlider2()
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        let rotate = UIRotationGestureRecognizer(target: self, action: #selector(rotatedView))
//        knob.isUserInteractionEnabled = true
//        knob.addGestureRecognizer(rotate)
//    }
    
    private func setupSlider1() {
        let slider1 = UISlider()
        slider1.translatesAutoresizingMaskIntoConstraints = false
        contentSlider1.addSubview(slider1)
        slider1.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2))
        slider1.widthAnchor.constraint(equalTo: contentSlider1.heightAnchor).isActive = true
        slider1.centerYAnchor.constraint(equalTo: contentSlider1.centerYAnchor).isActive = true
        slider1.centerXAnchor.constraint(equalTo: contentSlider1.centerXAnchor).isActive = true
        
        slider1.thumbTintColor = .red
        slider1.minimumTrackTintColor = .clear
        slider1.maximumTrackTintColor = .clear
    }
    
    private func setupSlider2() {
        let slider2 = UISlider()
        slider2.translatesAutoresizingMaskIntoConstraints = false
        contentSlider2.addSubview(slider2)
        slider2.transform = CGAffineTransform(rotationAngle: CGFloat(-Double.pi / 2))
        slider2.widthAnchor.constraint(equalTo: contentSlider2.heightAnchor).isActive = true
        slider2.centerYAnchor.constraint(equalTo: contentSlider2.centerYAnchor).isActive = true
        slider2.centerXAnchor.constraint(equalTo: contentSlider2.centerXAnchor).isActive = true
        
        slider2.thumbTintColor = .black
        slider2.minimumTrackTintColor = .clear
        slider2.maximumTrackTintColor = .clear
    }
    
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
}

