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
    
    static let sharedInstance = ModelManager.init()
    
    var tourEntries: [TourData] = []
    
    override init() {
        super.init()
        
        self.getData()
    }
    
    func getData () {
        
    }
    
    
}
