//
//  AccountCell.swift
//  tableCORRECTApp
//
//  Created by Даниил on 29.01.2022.
//

import Foundation
import UIKit
class AccountCell: UITableViewCell {
    let gap: CGFloat = 10

    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    let levelLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    let nameLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let ageLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    lazy var labelStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [nameLabel, levelLabel, ageLabel])
        stack.axis = .vertical
        stack.distribution = .fillEqually
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
        contentView.addSubview(profileImageView)
        contentView.addSubview(labelStack)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            profileImageView.widthAnchor.constraint(equalTo: contentView.widthAnchor, multiplier: 0.3),
            profileImageView.heightAnchor.constraint(equalTo: profileImageView.widthAnchor),
            profileImageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: gap),
            profileImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: gap),
            profileImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -gap),

            labelStack.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -gap),
            labelStack.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -gap),
            labelStack.topAnchor.constraint(equalTo: contentView.topAnchor, constant: gap),
            labelStack.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: gap)
            
        ])
    }

    func configure(with model: AccountModel) {
        levelLabel.text = "Level: \(model.level)"
        ageLabel.text = "Age: \(model.age)"
        nameLabel.text = "Name: \(model.name)"
        profileImageView.image = UIImage(named: model.imageName)
    }
}
