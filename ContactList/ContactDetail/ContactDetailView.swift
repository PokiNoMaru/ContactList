//
//  ContactDetailView.swift
//  ContactList
//
//  Created by Даниил on 06.02.2022.
//

import UIKit
class ContactDetailView: UIViewController {
    weak var dataSource: ContactDetailDataSource?
    var presenter: ContactDetailPresenter?
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(PropertyCell.self, forCellReuseIdentifier: "\(PropertyCell.self)")
        tableView.dataSource = dataSource
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
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

