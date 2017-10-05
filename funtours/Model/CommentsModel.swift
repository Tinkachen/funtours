//
//  CommentsModel.swift
//  funtours
//
//  Created by Catharina Herchert on 28.09.17.
//  Copyright © 2017 Catharina Herchert. All rights reserved.
//

import Foundation

class Comments {
    
    var creator: String?
    var date: String?
    var text: String?
    
    var likes: Int?
    
    init(creator: String?, date: String?, text: String?, likes: Int?) {
        self.creator = creator
        self.date = date
        self.text = text
        self.likes = likes
    }
}
