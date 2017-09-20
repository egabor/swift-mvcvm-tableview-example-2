//
//  ExampleCell.swift
//  example
//
//  Created by Career Mode on 2017. 09. 20..
//  Copyright © 2017. Gabor Eszenyi. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ExampleCell: UITableViewCell {

    // MARK: - let constants

    let disposeBag = DisposeBag()

    // The viewmodel must be let!
    // To prevent memory leaks change the model inside the viewmodel instead of changing the viewmodel object.
    let viewModel = ExampleCellViewModel()

    // MARK: - var variables

    // MARK: - Interface Builder Outlets

    // MARK: - UITableViewCell Lifecycle Methods

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpBindings()
    }

    deinit {
        // Don't forget to remove the observers here
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    // MARK: - Helper Methods

}

// MARK: - Reacive Bindable Implementation

extension ExampleCell: ReactiveBindable {

    func setUpBindings() {
        viewModel.title.asObservable().bind(to: textLabel!.rx.text).disposed(by: disposeBag)
    }

    func bind(to model: Bindable?) {
        guard let model = model as? Example else { return }
        viewModel.model = model
    }

}

// MARK: - Interface Builder Actions

extension ExampleCell {

}

// MARK: - Notification handlers can be placed here

extension ExampleCell {

}
