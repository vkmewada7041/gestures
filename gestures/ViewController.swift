//
//  ViewController.swift
//  gestures
//
//  Created by vkmewada on 10/05/20.
//  Copyright © 2020 technicalinitial. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var swipe = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture))
        swipe.direction = UISwipeGestureRecognizer.Direction.down
        self.view.addGestureRecognizer(swipe)
        
        swipe = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture2))
        swipe.direction = UISwipeGestureRecognizer.Direction.up
        self.view.addGestureRecognizer(swipe)
        
        swipe = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture3))
        swipe.direction = UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(swipe)
        
        swipe = UISwipeGestureRecognizer(target: self, action: #selector(respondToSwipeGesture4))
        swipe.direction = UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(swipe)
        
    }

    @objc func respondToSwipeGesture() {
        self.view.backgroundColor = UIColor.black
        alertWithMessage(message: "Down Swipe")
    }

    @objc func respondToSwipeGesture2() {
        self.view.backgroundColor = UIColor.white
        alertWithMessage(message: "Up Swipe")
    }

    @objc func respondToSwipeGesture3() {
        self.view.backgroundColor = UIColor.red
        alertWithMessage(message: "Left Swipe")
    }

    @objc func respondToSwipeGesture4() {
        self.view.backgroundColor = UIColor.blue
        alertWithMessage(message: "Right Swipe")
    }
    
    //Alert
    @objc func alertWithMessage(message:String) {
        let alertController = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)

        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { (Action) in
            print("OK Action")
        }))

        self.present(alertController, animated: true)
    }
}

