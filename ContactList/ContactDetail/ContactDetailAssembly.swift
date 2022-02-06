//
//  ContactDetailAssembly.swift
//  ContactList
//
//  Created by Даниил on 06.02.2022.
//

import UIKit
enum ContactDetailAssembly {
    static func create(with model: AccountModel) -> UIViewController {
        let view = ContactDetailView()
        let dataSource = ContactDetailDataSource()
        view.dataSource = dataSource
        let presenter = ContactDetailPresenter(model: model)
        view.presenter = presenter
        presenter.dataSource = dataSource
//        let router = ContactDetailRouter()
//        view.presenter = presenter
//        presenter.router = router
//        presenter.view = view
//        router.view = view
        return view
    }
    
    
}
