//
//  TourDataModel.swift
//  funtours
//
//  Created by Catharina Herchert on 28.09.17.
//  Copyright © 2017 Catharina Herchert. All rights reserved.
//

import Foundation
import UIKit

struct Comment {
    let creator: String
    let date: String
    let text: String
    
    let likes: Int
}

struct Station {
    let identifier: String
    let stationName: String
    let kind: String
    let adress: String
    let number: Int
    
    let informations: String
    
    let likes: Int
    let website: URL?
    let yelp: URL?
}

struct TourData {
    let identifier: String
    let tourName: String
    let tourDescription: String
    let creator: String
    let creationTime: String
    let image: UIImage
    
    let likes: Int
    let favs: Int
    let comments: [Comment]?
    
    let stations: [Station]?
    
    let rdmColor: UIColor?
}
