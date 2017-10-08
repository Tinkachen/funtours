//
//  PopularView.swift
//  funtours
//
//  Created by Catharina Herchert on 29.09.17.
//  Copyright © 2017 Catharina Herchert. All rights reserved.
//

import Foundation
import UIKit

class PopularView: UIViewController {
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var backgroundFilterView: UIView!
    
    @IBOutlet var containerView: UIView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var favImageView: UIImageView!
    @IBOutlet var dureImageView: UIImageView!
    @IBOutlet var favLabel: UILabel!
    @IBOutlet var dureLabel: UILabel!
    
    @IBOutlet var showBtn: UIButton!
    
    var pageIndex: Int! = 0
    
    var data: TourData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.filterForBackgroundImage()
        imageView.image = data.image
        
        containerView.backgroundColor = UIColor.white
        containerView.layer.shadowColor = UIColor.black.cgColor
        containerView.layer.shadowOpacity = 1
        containerView.layer.shadowOffset = CGSize.zero
        containerView.layer.shadowRadius = 10
        
        titleLabel.text = data.tourName
        descriptionLabel.text = data.tourDescription
        favLabel.text = "\(data.favs != nil ? data.favs! : 0)"
        dureLabel.text = "1"
        
        showBtn.tintColor = UIColor.white
        showBtn.backgroundColor = data.rdmColor
        showBtn.layer.cornerRadius = showBtn.bounds.size.height / 2
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func updateContent (data: TourData) {
        self.data = data
    }
    
    func filterForBackgroundImage () {
        
        backgroundFilterView.backgroundColor = data.rdmColor
        backgroundFilterView.layer.opacity = 0.60

        backgroundImageView.image = data.image
        backgroundImageView.addSubview(backgroundFilterView)
        
    }
}
