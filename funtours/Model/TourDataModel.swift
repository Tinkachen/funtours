//
//  TourDataModel.swift
//  funtours
//
//  Created by Catharina Herchert on 28.09.17.
//  Copyright © 2017 Catharina Herchert. All rights reserved.
//

import Foundation
import UIKit

class TourData: Equatable {
    
    var identifier: String?
    var tourName: String?
    var tourDescription: String?
    var creator: String?
    var creationTime: NSDate?
    var image: UIImage?
    
    var likes: Int?
    var favs: Int?
    var comments: [Comments]?
    
    var stations: [Stations]?
    
    init(identifier: String?, tourName: String?, tourDescription: String?, creator: String?, creationTime: NSDate?, image: UIImage?, likes: Int?, favs: Int?, comments: [Comments]?, stations: [Stations]?) {
        self.identifier = identifier
        self.tourName = tourName
        self.tourDescription = tourDescription
        self.creator = creator
        self.creationTime = creationTime
        self.image = image
        self.likes = likes
        self.favs = favs
        self.comments = comments
        self.stations = stations
    }
    
    func createTourEntry () -> TourData {
        
        return TourData(identifier: identifier, tourName: tourName, tourDescription: tourDescription, creator: creator, creationTime: creationTime, image: image, likes: likes, favs: favs, comments: comments, stations: stations)
    }
    
}

func == (lhs: TourData, rhs: TourData) -> Bool {
    return lhs.identifier == rhs.identifier
}
