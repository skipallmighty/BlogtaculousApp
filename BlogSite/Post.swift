//
//  Post.swift
//  BlogSite
//
//  Created by Skip Wilson on 8/21/14.
//  Copyright (c) 2014 Skip Wilson. All rights reserved.
//

import Foundation

class Post {
    var id:Int
    var title:String
    var author:String
    var content:String
    
    init(id:Int,title:String,author:String,content:String) {
        self.id = id
        self.title = title
        self.author = author
        self.content = content
    }
    
    func toJSON() -> String {
        return "{\"Post\":{\"id\":\(id),\"title\":\"\(title)\",\"author\":\"\(author)\",\"content\":\"\(content)\"}}"
    }
}
