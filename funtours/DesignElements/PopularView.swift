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
    
    @IBOutlet var backgroundImage: UIImageView!
    @IBOutlet var backgroundFilter: UIView!
    
    @IBOutlet var containerView: UIView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var favImageView: UIImageView!
    @IBOutlet var dureImageView: UIImageView!
    @IBOutlet var favLabel: UILabel!
    @IBOutlet var dureLabel: UILabel!
    
    var pageIndex: Int! = 0
    
    var data: TourData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.filterForBackgroundImage(image: data.image)
        imageView.image = data.image
        
        titleLabel.text = data.tourName
        descriptionLabel.text = data.tourDescription
        favLabel.text = "\(data.favs != nil ? data.favs! : 0)"
        dureLabel.text = "1"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func updateContent (data: TourData) {
        self.data = data
    }
    
    func filterForBackgroundImage (image: UIImage?) {
        
        backgroundFilter.backgroundColor = UIColor.Colors.randomColor()
        backgroundFilter.layer.opacity = 0.75

        backgroundImage.image = image
        backgroundImage.addSubview(backgroundFilter)
        
    }
}
