//
//  Indhold.swift
//  FBTry3
//
//  Created by Bent Lundgren on 09/05/2019.
//  Copyright © 2019 Bent Lundgren. All rights reserved.
//

import Foundation


class Indhold {
    var name: String
    var tid: Int
    var text: String
    
    init(name : String, tid: Int, text: String ) {
        self.name = name
        self.tid = tid
        self.text = text
    }
}
