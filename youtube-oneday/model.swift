//
//  model.swift
//  youtube-oneday
//
//  Created by Lachlan Haddrell on 29/6/20.
//  Copyright © 2020 haddrelltech. All rights reserved.
//

import Foundation

class Model {
    
    func getvideos() {
        
        //create a url object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else{
            return
            
        
        }
        
        //get a url session object
        let session = URLSession.shared
        
        //get a data task  from the urk session object
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            
            
            //check if there were nay errors
            if error != nil || data == nil {
                return
            }
            
            do {
                // passing the data into video objects
                       let decoder = JSONDecoder()
                       decoder.dateDecodingStrategy = .iso8601
                       
                      let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
                
            }
                
                catch {
                    
                    
                
                
            }
           
        }
        //kick off the task
        dataTask.resume()
    }
}
