//
//  MainViewController.swift
//  funtours
//
//  Created by Catharina Herchert on 28.09.17.
//  Copyright © 2017 Catharina Herchert. All rights reserved.
//

import Foundation
import UIKit

import MTRadialMenu


class MainViewController: UIViewController {
    
    @IBOutlet var sortView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createRadialMenu()
    }
    
    func createRadialMenu () {
        
        let menu: MTRadialMenu = MTRadialMenu()
        
        menu.startingAngle = 10.0
        menu.incrementAngle = -60.0
        
        let distance: Distance = Distance()
        distance.identifier = "distance"
        distance.fillColorNormal = UIColor.hippieBlue()
        distance.fillColorSelected = UIColor.sundance()
        
        let popularity: Popularity = Popularity()
        popularity.identifier = "popularity"
        popularity.fillColorNormal = UIColor.hippieBlue()
        popularity.fillColorSelected = UIColor.sundance()
        
        let dure: Dure = Dure()
        dure.identifier = "dure"
        dure.fillColorNormal = UIColor.hippieBlue()
        dure.fillColorSelected = UIColor.sundance()
        
        menu.add(distance)
        menu.add(popularity)
        menu.add(dure)
        
        menu.addTarget(self, action: #selector(menuSelected(sender:)), for: .touchUpInside)
        menu.addTarget(self, action: #selector(menuAppear(sender:)), for: .touchDown)
        
        self.sortView.addSubview(menu)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @objc func menuSelected (sender: MTRadialMenu) {
        print(sender.selectedIdentifier)
    }
    
    @objc func menuAppear (sender: MTRadialMenu) {
        self.view.bringSubview(toFront: sender)
    }
}
