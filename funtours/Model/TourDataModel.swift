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
    var creationTime: String?
    var image: UIImage?
    
    var likes: Int?
    var favs: Int?
    var comments: [Comments]?
    
    var stations: [Stations]?
    
    var rdmColor: UIColor?
    
    init(identifier: String?, tourName: String?, tourDescription: String?, creator: String?, creationTime: String?, image: UIImage?, likes: Int?, favs: Int?, comments: [Comments]?, stations: [Stations]?, rdmColor: UIColor?) {
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
        self.rdmColor = rdmColor
    }
    
    func createTourEntry () -> TourData {
        
        return TourData(identifier: identifier, tourName: tourName, tourDescription: tourDescription, creator: creator, creationTime: creationTime, image: image, likes: likes, favs: favs, comments: comments, stations: stations, rdmColor: rdmColor)
    }
    
    static func createPopularDummyData () -> [TourData] {
        var data: [TourData] = [TourData]()
        
        data.append(TourData(identifier: "1234", tourName: "Along the wall", tourDescription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis.", creator: "T. Mendez", creationTime: "01/2017", image: UIImage(named: "Image-3"), likes: 10, favs: 5,
                             comments: [Comments(creator: "P.Pan", date: "01/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 2)],
                             stations: [Stations(identifier: "A1B2", stationName: "First things first", kind: "Art", adress: "Mustermannstraße 10, 10117 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 0, website: URL(string: ""), yelp: URL(string: ""))],
                             rdmColor: UIColor.Colors.randomColor()))
        
        data.append(TourData(identifier: "1234", tourName: "Berlin Art", tourDescription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis.", creator: "T. Mendez", creationTime: "01/2017", image: UIImage(named: "Image-1"), likes: 10, favs: 5,
                             comments: [Comments(creator: "P.Pan", date: "01/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 2)],
                             stations: [Stations(identifier: "A1B2", stationName: "First things first", kind: "Art", adress: "Mustermannstraße 10, 10117 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 0, website: URL(string: ""), yelp: URL(string: ""))],
                             rdmColor: UIColor.Colors.randomColor()))
        
        return data
    }
    
    static func createDummyData () -> [TourData] {
        var data: [TourData] = [TourData]()
        
        data.append(TourData(identifier: "1234", tourName: "Along the wall", tourDescription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis.", creator: "T. Mendez", creationTime: "01/2017", image: UIImage(named: "Image-3"), likes: 10, favs: 5,
                             comments: [Comments(creator: "P.Pan", date: "01/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 2)],
                             stations: [Stations(identifier: "A1B2", stationName: "First things first", kind: "Art", adress: "Mustermannstraße 10, 10117 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 0, website: URL(string: ""), yelp: URL(string: ""))],
                             rdmColor: UIColor.Colors.randomColor()))
        
        data.append(TourData(identifier: "1234", tourName: "Berlin Art", tourDescription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis.", creator: "T. Mendez", creationTime: "01/2017", image: UIImage(named: "Image-1"), likes: 10, favs: 5,
                             comments: [Comments(creator: "P.Pan", date: "01/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 2)],
                             stations: [Stations(identifier: "A1B2", stationName: "First things first", kind: "Art", adress: "Mustermannstraße 10, 10117 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 0, website: URL(string: ""), yelp: URL(string: ""))],
                             rdmColor: UIColor.Colors.randomColor()))
        
        return data
    }
    
}

func == (lhs: TourData, rhs: TourData) -> Bool {
    return lhs.identifier == rhs.identifier
}
