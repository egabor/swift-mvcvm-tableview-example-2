//
//  TitlePresentable.swift
//  example
//
//  Created by Career Mode on 2017. 09. 19..
//  Copyright © 2017. Gabor Eszenyi. All rights reserved.
//

/// This protool will automatically added to UITableView section headers and footers by MV[C]VM templates if needed.
protocol TitlePresentable: Bindable {
    var title: String! { get set }
}
