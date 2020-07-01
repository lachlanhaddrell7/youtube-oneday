//
//  Response.swift
//  youtube-oneday
//
//  Created by Lachlan Haddrell on 1/7/20.
//  Copyright © 2020 haddrelltech. All rights reserved.
//

import Foundation

struct Response: Decodable {
    
    var items:[video]?
    
    enum CodingKeys:String, CodingKey {
        
        case items
        
        
        
        
        
    }
    
    init(from decoder: Decoder) throws {
        
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.items = try container.decode([video].self, forKey: .items)
        
        
    }
    
    }
    
    

