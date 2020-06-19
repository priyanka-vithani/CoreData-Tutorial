
//
//  PersonDetail.swift
//  CoreDataDemo
//
//  Created by Apple on 19/06/20.
//  Copyright © 2020 Apple. All rights reserved.
//

import Foundation
struct PersonDetail {
    var name : String
    var phone : String
    var img : Data
    
    init(Pname : String,Pphone : String,Pimg : Data) {
        self.name = Pname
        self.phone = Pphone
        self.img = Pimg
    }
    
}
