//
//  ContactListView.swift
//  ContactList
//
//  Created by Даниил on 06.02.2022.
//

import UIKit

class ContactListView: UIViewController {
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    func setupUI() {
        addSubviews()
        setupConstraints()
    }
    func addSubviews() {
        view.addSubview(tableView)
    }
    func setupConstraints() {
        
        tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    }
}
