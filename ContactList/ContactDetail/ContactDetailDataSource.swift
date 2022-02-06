//
//  ContactDetailDataSource.swift
//  ContactList
//
//  Created by Даниил on 06.02.2022.
//

import UIKit

class ContactDetailDataSource: NSObject, UITableViewDataSource {
    
    var properties: [PropertyModel] = []
    
    func setupProperies(_ properties: [PropertyModel]) {
        self.properties = properties
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        properties.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(PropertyCell.self)", for: indexPath) as!
        PropertyCell
        cell.configure(with: properties[indexPath.row])
        return cell
    }
    
}
