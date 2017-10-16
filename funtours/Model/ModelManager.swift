//
//  ModelManager.swift
//  funtours
//
//  Created by Catharina Herchert on 28.09.17.
//  Copyright © 2017 Catharina Herchert. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ModelManager: NSObject {
    
    static let sharedInstance = ModelManager()
    
    var tourEntries: [TourData] = []
    
    override init() {
        super.init()
        
        self.getData()
    }
    
    func getData () {
        
    }
    
    
    /////////////
    static func createPopularDummyData () -> [TourData] {
        var data: [TourData] = [TourData]()
        
        data.append(TourData(
            identifier: "1234",
            tourName: "Along the wall",
            tourDescription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis.",
            creator: "T. Mendez",
            creationTime: "01/2017",
            image: UIImage(named: "Image-3")!,
            likes: 10,
            favs: 5,
            comments: [Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20),
                       Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20)],
            stations: [Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: "")),
                       Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: ""))],
            rdmColor: UIColor.randomColor()))
        
        data.append(TourData(
            identifier: "1234",
            tourName: "Multiculti",
            tourDescription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis.",
            creator: "T. Mendez",
            creationTime: "01/2017",
            image: UIImage(named: "Image-1")!,
            likes: 10,
            favs: 5,
            comments: [Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20),
                       Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20)],
            stations: [Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: "")),
                       Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: ""))],
            rdmColor: UIColor.randomColor()))
                
        
        return data
    }
    
    static func createDummyData () -> [TourData] {
        var data: [TourData] = [TourData]()
        
        data.append(TourData(
            identifier: "1234",
            tourName: "Along the wall",
            tourDescription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis.",
            creator: "T. Mendez",
            creationTime: "01/2017",
            image: UIImage(named: "Image-3")!,
            likes: 10,
            favs: 5,
            comments: [Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20),
                       Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20)],
            stations: [Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: "")),
                       Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: ""))],
            rdmColor: UIColor.randomColor()))
        
        data.append(TourData(
            identifier: "1234",
            tourName: "Multiculti",
            tourDescription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis.",
            creator: "T. Mendez",
            creationTime: "01/2017",
            image: UIImage(named: "Image-1")!,
            likes: 10,
            favs: 5,
            comments: [Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20),
                       Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20)],
            stations: [Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: "")),
                       Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: ""))],
            rdmColor: UIColor.randomColor()))
        
        data.append(TourData(
            identifier: "1234",
            tourName: "Along the wall",
            tourDescription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis.",
            creator: "T. Mendez",
            creationTime: "01/2017",
            image: UIImage(named: "Image-2")!,
            likes: 10,
            favs: 5,
            comments: [Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20),
                       Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20)],
            stations: [Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: "")),
                       Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: ""))],
            rdmColor: UIColor.randomColor()))
        
        data.append(TourData(
            identifier: "1234",
            tourName: "Multiculti",
            tourDescription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis.",
            creator: "T. Mendez",
            creationTime: "01/2017",
            image: UIImage(named: "Image-2")!,
            likes: 10,
            favs: 5,
            comments: [Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20),
                       Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20)],
            stations: [Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: "")),
                       Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: ""))],
            rdmColor: UIColor.randomColor()))
        
        data.append(TourData(
            identifier: "1234",
            tourName: "Along the wall",
            tourDescription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis.",
            creator: "T. Mendez",
            creationTime: "01/2017",
            image: UIImage(named: "Image-3")!,
            likes: 10,
            favs: 5,
            comments: [Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20),
                       Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20)],
            stations: [Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: "")),
                       Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: ""))],
            rdmColor: UIColor.randomColor()))
        
        data.append(TourData(
            identifier: "1234",
            tourName: "Multiculti",
            tourDescription: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis.",
            creator: "T. Mendez",
            creationTime: "01/2017",
            image: UIImage(named: "Image-1")!,
            likes: 10,
            favs: 5,
            comments: [Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20),
                       Comment(creator: "P.Pan", date: "02/2017", text: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.", likes: 20)],
            stations: [Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: "")),
                       Station(identifier: "1234", stationName: "First Things First", kind: "Art", adress: "Mustermannallee 200, 12345 Berlin", number: 1, informations: "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.", likes: 2, website: URL(string: ""), yelp: URL(string: ""))],
            rdmColor: UIColor.randomColor()))
        
        return data
    }
    
}
