//
//  Model.swift
//  FoodDeliveryApp
//
//  Created by shahid panchily on 19/10/20.
//  Copyright © 2020 shahidpanchily. All rights reserved.
//

import Foundation

class Model {
    
    
    
    func getResult() {
        
        let url = URL(string: constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            if error != nil || data == nil {
                return
            }
            
                
            do  {
                
                
                 let decoder = JSONDecoder()
                

                let response = try decoder.decode(Response.self, from: data!)
                
               
               print(response)

//                if response.categories != nil || response.imagepath != nil {
//
//
//                    print(response)
//                }
        }
        
        catch {
            print("")
            
        }
            
            
        }
        dataTask.resume()
        
        
    }
}

