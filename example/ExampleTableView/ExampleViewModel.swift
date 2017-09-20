//
//  ExampleViewModel.swift
//  example
//
//  Created by Career Mode on 2017. 09. 20..
//  Copyright © 2017. Gabor Eszenyi. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift
import RxDataSources

class ExampleViewModel {

    // MARK: - let constants

    // MARK: - var variables

    // Change the sections variable to update the TableView
    var sections = Variable([TableViewSection]())
    var dataSource = RxTableViewSectionedReloadDataSource<TableViewSection>()

    // MARK: - Lifecycle Methods

    init () {
        sections.value = [TableViewSection(items: [Example("Row 0"), Example("Row 1"), Example("Row 2")])]
    }

    deinit {
        // Don't forget to remove the observers here
    }

    // MARK: - Busniness Logic

    // MARK: - Helper Methods

}

// MARK: - Notification handlers can be placed here

extension ExampleViewModel {

}
