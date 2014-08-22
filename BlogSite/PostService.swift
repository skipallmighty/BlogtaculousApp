//
//  PostService.swift
//  BlogSite
//
//  Created by Skip Wilson on 8/21/14.
//  Copyright (c) 2014 Skip Wilson. All rights reserved.
//

import UIKit

class PostService {
    
    var settings:Settings!
    
    init(){
        self.settings = Settings()
    }
    
    func getPosts(callback:(NSDictionary)->()) {
        println("get posts")
        request(settings.viewPosts,callback)
    }
    
    func request(url:String,callback:(NSDictionary)->()) {
        var nsURL = NSURL(string: url)
        println(callback)
        let task = NSURLSession.sharedSession().dataTaskWithURL(nsURL) {
            (data,response,error) in
            var error:NSError?
            var response = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSDictionary
            callback(response)
        }
        task.resume()
    }
}
