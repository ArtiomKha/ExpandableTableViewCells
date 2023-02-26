//
//  ExpandableTableViewCell.swift
//  ExpandableTableViewCells
//
//  Created by Artsiom Khaliliayeu on 25.02.23.
//

import UIKit

class ExpandableTableViewCell: UITableViewCell {

	static let reuseIdentifier = "ExpandableTableViewCell"

	let stackView: UIStackView = {
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.distribution = .fill
		stackView.alignment = .fill
		stackView.axis = .vertical
		stackView.spacing = 8
		stackView.isLayoutMarginsRelativeArrangement = true
		stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16)
		return stackView
	}()

	let mainStackView: UIStackView = {
		let stackView = UIStackView()
		stackView.translatesAutoresizingMaskIntoConstraints = false
		stackView.distribution = .fill
		stackView.alignment = .center
		stackView.spacing = 8
		return stackView
	}()

	let iconImageView: UIImageView = {
		let imageView = UIImageView()
		imageView.tintColor = #colorLiteral(red: 0.1404079861, green: 0.1404079861, blue: 0.1404079861, alpha: 1)
		imageView.translatesAutoresizingMaskIntoConstraints = false
		imageView.contentMode = .scaleAspectFit
		return imageView
	}()

	let titleLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.font = .systemFont(ofSize: 18, weight: .semibold)
		label.textColor = #colorLiteral(red: 0.1404079861, green: 0.1404079861, blue: 0.1404079861, alpha: 1)
		label.setContentHuggingPriority(.init(rawValue: 200), for: .horizontal)
		return label
	}()

	let chevronImageView: UIImageView = {
		let imageView = UIImageView()
		imageView.image = UIImage(systemName: "chevron.down")?.withRenderingMode(.alwaysTemplate)
		imageView.tintColor = #colorLiteral(red: 0.3382260101, green: 0.3382260101, blue: 0.3382260101, alpha: 1)
		imageView.contentMode = .scaleAspectFit
		return imageView
	}()

	let expandableView: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.isHidden = true
		return view
	}()

	let descriptionLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.numberOfLines = 0
		label.textAlignment = .left
		label.textColor = #colorLiteral(red: 0.3197798296, green: 0.3197798296, blue: 0.3197798296, alpha: 1)
		return label
	}()

	override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)
		setup()
	}

	required init?(coder: NSCoder) {
		super.init(coder: coder)
		setup()
	}

	func setup() {
		
	}

	func set(_ model: CellDataModel) {
		
	}
}
