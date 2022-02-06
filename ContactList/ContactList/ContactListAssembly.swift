//
//  ContactListAssembly.swift
//  ContactList
//
//  Created by Даниил on 06.02.2022.
//

import Foundation
import UIKit

enum ContactListAssembly {
    static func create() -> UIViewController {
        let view = ContactListView()
        let dataSource = ContactListDataSource()
        let presenter = ContactListPresenter()
        let router = ContactListRouter()
        view.dataSource = dataSource
        view.presenter = presenter
        dataSource.presenter = presenter
        presenter.router = router
        presenter.view = view
        router.view = view
        return view
    }
}
