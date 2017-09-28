//
//  StationModel.swift
//  funtours
//
//  Created by Catharina Herchert on 28.09.17.
//  Copyright © 2017 Catharina Herchert. All rights reserved.
//

import Foundation

class Stations {
    
    var identifier: String?
    var stationName: String?
    var kind: String?
    var adress: String?
    var number: Int?
    
    var informations: String?
    
    var likes: Int?
    var website: URL?
    var yelp: URL?
    
    init(identifier: String?, stationName: String?, kind: String?, adress: String?, number: Int?, informations: String?, likes: Int?, website: URL?, yelp: URL?) {
        self.identifier = identifier
        self.stationName = stationName
        self.kind = kind
        self.adress = adress
        self.number = number
        self.informations = informations
        self.likes = likes
        self.website = website
        self.yelp = yelp
    }
}
