//
//  Example.swift
//  example
//
//  Created by Career Mode on 2017. 09. 20..
//  Copyright © 2017. Gabor Eszenyi. All rights reserved.
//

import Foundation

class Example: Bindable {

    // MARK: - Model Properties
    var title: String = ""
    
    init () {

    }
    
    init (_ title: String = "") {
        self.title = title
    }
}
