//
//  Task.swift
//  FBTry3
//
//  Created by Bent Lundgren on 30/04/2019.
//  Copyright © 2019 Bent Lundgren. All rights reserved.
//

import Foundation

// Task = opgave
struct Task{
    var name: String
    var done: Bool
    var id: String
    
    var dictionary: [String: Any] {
        return [
            "name": name,
            "done": done
        ]
    }
}

extension Task{
    init?(dictionary: [String : Any], id: String) {
        guard let name = dictionary["name"] as? String,
            let done = dictionary["done"] as? Bool
            else { return nil }
        
        self.init(name: name, done: done, id: id)
    }
}
