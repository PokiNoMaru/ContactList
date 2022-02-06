//
//  ContactListRouter.swift
//  ContactList
//
//  Created by Даниил on 06.02.2022.
//

import Foundation

class ContactListRouter {
    weak var view: ContactListView?
    
    func routeToContactDetail(with model: AccountModel) {
        view?.navigationController?.pushViewController(ContactDetailAssembly.create(with: model), animated: true)
    }
}
