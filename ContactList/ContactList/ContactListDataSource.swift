//
//  ContactListDataSource.swift
//  tableCORRECTApp
//
//  Created by Даниил on 29.01.2022.
//

import Foundation
import UIKit
class ContactListDataSource: NSObject, UITableViewDataSource {
    weak var presenter: ContactListPresenter?
    
    let models = [
        AccountModel(name: "Daniel", age: 15, level: 5, imageName: "accountImage", number: "8 800 555 35 35", address: "Kolotushkina 8"),
        AccountModel(name: "Daniel", age: 15, level: 5, imageName: "accountImage", number: "8 800 555 35 35", address: "Kolotushkina 8"),
        AccountModel(name: "Daniel", age: 15, level: 5, imageName: "accountImage", number: "8 800 555 35 35", address: "Kolotushkina 8"),
        AccountModel(name: "Daniel", age: 15, level: 5, imageName: "accountImage", number: "8 800 555 35 35", address: "Kolotushkina 8"),
        AccountModel(name: "Daniel", age: 15, level: 5, imageName: "accountImage", number: "8 800 555 35 35", address: "Kolotushkina 8"),
        AccountModel(name: "Daniel", age: 15, level: 5, imageName: "accountImage", number: "8 800 555 35 35", address: "Kolotushkina 8"),
        AccountModel(name: "Daniel", age: 15, level: 5, imageName: "accountImage", number: "8 800 555 35 35", address: "Kolotushkina 8")
    ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AccountCell", for: indexPath) as! AccountCell
        cell.configure(with: models[indexPath.row])
        return cell
    }
    
}

extension ContactListDataSource: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.didSelectModel(models[indexPath.row])
    }
}
