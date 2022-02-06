//
//  ContactListPresenter.swift
//  ContactList
//
//  Created by Даниил on 06.02.2022.
//

import Foundation

class ContactListPresenter {
    weak var view: ContactListView?
    var router: ContactListRouter?
    
    func didSelectModel(_ model: AccountModel) {
        router?.routeToContactDetail(with: model)
    }
}
