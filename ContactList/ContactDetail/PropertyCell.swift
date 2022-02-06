//
//  PropertyCell.swift
//  ContactList
//
//  Created by Даниил on 06.02.2022.
//

import UIKit

class PropertyCell: UITableViewCell {
    let gap: CGFloat = 10

    let valueLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 30)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .italicSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()


    lazy var labelStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [nameLabel, valueLabel])
        stack.axis = .vertical
        stack.distribution = .fill
        stack.alignment = .leading
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        addSubviews()
        setupConstraints()
    }

    private func addSubviews() {
        contentView.addSubview(labelStack)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            labelStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -gap),
            labelStack.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -gap),
            labelStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: gap),
            labelStack.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: gap)
        ])
    }

    func configure(with model: PropertyModel) {
        nameLabel.text = model.name
        valueLabel.text = model.value
    }
}
