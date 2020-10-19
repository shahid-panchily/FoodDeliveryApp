//
//  Images.swift
//  FoodDeliveryApp
//
//  Created by shahid panchily on 19/10/20.
//  Copyright © 2020 shahidpanchily. All rights reserved.
//

import Foundation


struct Response : Decodable {
    
    var categories :[Videos]?
    var imagepath : String?
    
    enum Codingkeys : String, CodingKey{
        
        case categories = "categories"
        case imagepath = "imagepath"
        
    }
    
    init(from decoder: Decoder) throws  {
        
        let container = try decoder.container(keyedBy : Codingkeys.self)
        
        self.categories = try container.decode([Videos].self, forKey: .categories)
        self.imagepath = try container.decode(String.self, forKey: .imagepath)
    }
    
}

//struct Videos : Decodable {
//
//    var images : [Images]?
//
//    enum CodingKeys : String, CodingKey {
//
//        case images
//
//    }
//
//    init (from decoder : Decoder) throws {
//
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//
//        self.images = try container.decode([Images].self, forKey: .images)
//
//
//    }
//
//}
//
//struct Images : Decodable {
//
//    var filename = ""
//
//  enum  CodingKeys : String, CodingKey {
//
//    case filename = "filename"
//    }
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.filename = try container.decode(String.self, forKey: .filename)
//    }
//}


struct Videos: Decodable{
    
    var description : String?
    var name : String?
    
    
    enum CodingKeys: String, CodingKey {
        
        case description = "description"
        case name = "name"
        
    }
    
      init(from decoder: Decoder) throws {
    
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.description = try container.decode(String.self, forKey: .description)
    
    
    }
    
    
}
