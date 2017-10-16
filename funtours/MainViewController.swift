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
    
    @IBOutlet weak var sortView: UIView!
    
    @IBOutlet weak var tourTableView: UITableView!
    
    var tourData: [TourData]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tourData = ModelManager.createDummyData()
        
        tourTableView.delegate = self
        tourTableView.dataSource = self
        tourTableView.separatorStyle = .none
        tourTableView.separatorColor = .none
        tourTableView.allowsSelection = false
        
        self.createRadialMenu()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tourTableView.reloadData()
    }
    
    func createRadialMenu () {
        
        let menu: MTRadialMenu = MTRadialMenu()
        
        menu.startingAngle = 30.0
        menu.radius = 90.0
        menu.incrementAngle = -30.0
        
        let distance = RadialMenuItem()
        distance.identifier = "distance"
        
        let popularity = RadialMenuItem()
        popularity.identifier = "popularity"
        
        let dure = RadialMenuItem()
        dure.identifier = "dure"
        
        menu.add(distance)
        menu.add(popularity)
        menu.add(dure)
        
        menu.addTarget(self, action: #selector(menuSelected(sender:)), for: .touchUpInside)
        menu.addTarget(self, action: #selector(menuAppear(sender:)), for: .touchDown)
        
        self.sortView.backgroundColor = UIColor.white
        self.sortView.layer.cornerRadius = sortView.bounds.size.width / 2
        self.sortView.layer.shadowColor = UIColor.black.cgColor
        self.sortView.layer.shadowOpacity = 1
        self.sortView.layer.shadowOffset = CGSize.zero
        self.sortView.layer.shadowRadius = 10
        
        let sortImageView: UIImageView = UIImageView(image: UIImage(named: "sort"))
        sortImageView.frame = sortView.frame
        sortImageView.tintColor = UIColor.gunPowder()
        sortImageView.contentMode = .scaleAspectFit
        self.sortView.addSubview(sortImageView)
        
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

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tourData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TourTableViewCell = tableView.dequeueReusableCell(withIdentifier: String(describing: TourTableViewCell.self), for: indexPath) as! TourTableViewCell
        
        cell.inputData(data: tourData[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}

internal class TourTableViewCell: UITableViewCell {
    
    var data: TourData!
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var backgroundFilterView: UIView!
    
    @IBOutlet weak var tourTitleLabel: UILabel!
    @IBOutlet weak var favLabel: UILabel!
    @IBOutlet weak var creatorLabel: UILabel!
    @IBOutlet weak var dureLabel: UILabel!
    @IBOutlet weak var likesLabel: UILabel!
    
    @IBOutlet weak var favImageView: UIImageView!
    @IBOutlet weak var creatorImageView: UIImageView!
    @IBOutlet weak var dureImageView: UIImageView!
    @IBOutlet weak var likesImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.tourTitleLabel.font = UIFont.boldFont(size: 20)
        self.tourTitleLabel.textColor = UIColor.springWood()
        
        self.favLabel.font = UIFont.mediumFont(size: 10)
        self.favLabel.textColor = UIColor.springWood()
        
        self.creatorLabel.font = UIFont.mediumFont(size: 10)
        self.creatorLabel.textColor = UIColor.springWood()
        
        self.dureLabel.font = UIFont.mediumFont(size: 10)
        self.dureLabel.textColor = UIColor.springWood()
        
        self.likesLabel.font = UIFont.mediumFont(size: 10)
        self.likesLabel.textColor = UIColor.springWood()
        
        self.favImageView.tintColor =  UIColor.gunPowder()
        self.creatorImageView.tintColor =  UIColor.gunPowder()
        self.dureImageView.tintColor =  UIColor.gunPowder()
        self.likesImageView.tintColor =  UIColor.gunPowder()
        
    }
    
    private func filterForBackgroundImage () {
        
        backgroundFilterView.backgroundColor = data.rdmColor
        backgroundFilterView.layer.opacity = 0.60
        
        backgroundImageView.image = data.image
    }
    
    func inputData (data: TourData) {
        self.data = data
        
        filterForBackgroundImage()
        
        tourTitleLabel.text = data.tourName
        favLabel.text = "\(data.favs)"
        creatorLabel.text = data.creator
        dureLabel.text = ""
        likesLabel.text = "\(data.likes)"
    }
}
