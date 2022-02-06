//
//  ContactListView.swift
//  ContactList
//
//  Created by Даниил on 06.02.2022.
//

import UIKit

class ContactListView: UIViewController {
    var dataSource: ContactListDataSource?
    var presenter: ContactListPresenter?

    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(AccountCell.self, forCellReuseIdentifier: "AccountCell")
        tableView.dataSource = dataSource
        tableView.delegate = dataSource
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private func setupUI() {
        view.backgroundColor = .white
        addSubviews()
        setupConstaints()
    }

    private func addSubviews() {
        view.addSubview(tableView)
    }

    private func setupConstaints() {
        NSLayoutConstraint.activate([
            tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
