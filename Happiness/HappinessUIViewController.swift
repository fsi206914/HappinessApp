//
//  HappinessUIViewController.swift
//  Happiness
//
//  Created by Liang Tang on 4/14/16.
//  Copyright © 2016 Tinker. All rights reserved.
//

import UIKit

class HappinessUIViewController: UIViewController, FaceViewDataSource {

    @IBOutlet weak var faceView: FaceView!{
        didSet{
            faceView.dataSource = self;
        }
    }
    
    var happiness: Int = 10{
        didSet{
            happiness = min(max(happiness, 0), 100);
            print("happiness = \(happiness)")
            updateUI()
        }
    }
    
    private func updateUI(){
        faceView.setNeedsDisplay();
    }
    
    func smilinessForFaceView(sender: FaceView) -> Double? {
        return Double(happiness - 50)/50;
    }
}
