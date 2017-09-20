//
//  ReactiveBindable.swift
//  example
//
//  Created by Career Mode on 2017. 09. 19..
//  Copyright © 2017. Gabor Eszenyi. All rights reserved.
//

/// This protool will automatically added by MV[C]VM templates if needed.
protocol ReactiveBindable {
    func setUpBindings()
    func bind(to model: Bindable?)
}
