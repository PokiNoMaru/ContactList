//
//  ContactDetailPresenter.swift
//  ContactList
//
//  Created by Даниил on 06.02.2022.
//

import Foundation

class ContactDetailPresenter {
    var dataSource: ContactDetailDataSource?
    var model: AccountModel
    
    init(model: AccountModel) {
        self.model = model
    }
    
    func viewDidLoad() {
        dataSource?.setupProperies([
            PropertyModel(name: "name", value: model.name),
            PropertyModel(name: "number", value: model.number),
            PropertyModel(name: "address", value: model.address),
            PropertyModel(name: "age", value: "\(model.age)")
        ])
    }
}
