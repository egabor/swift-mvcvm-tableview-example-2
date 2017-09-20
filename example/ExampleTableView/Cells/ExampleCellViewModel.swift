//
//  ExampleCellViewModel.swift
//  example
//
//  Created by Career Mode on 2017. 09. 20..
//  Copyright © 2017. Gabor Eszenyi. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift

class ExampleCellViewModel {

    // MARK: - let constants

    // MARK: - var variables
    var title = Variable("")
    
    var model: Example? {
        didSet {
            // Prepare the values
            title.value = (model?.title)!
        }
    }

    // MARK: - Lifecycle Methods

    init() {

    }

    init(with model: Example) {
        self.model = model
    }

    deinit {
        // Don't forget to remove the observers here
    }

    // MARK: - Busniness Logic

    // MARK: - Helper Methods

}

// MARK: - Notification handlers can be placed here

extension ExampleCellViewModel {

}
