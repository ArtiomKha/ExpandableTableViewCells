//
//  ViewController.swift
//  ExpandableTableViewCellFinal
//
//  Created by Artsiom Khaliliayeu on 26.02.23.
//

import UIKit

class ViewController: UIViewController {

	let tableView: UITableView = {
		let tableView = UITableView()
		tableView.translatesAutoresizingMaskIntoConstraints = false
		return tableView
	}()

	var dataSource = CellDataModel.mockedData

	override func viewDidLoad() {
		super.viewDidLoad()
		setup()
		setupTable()
	}

	func setup() {
		view.backgroundColor = .white
		view.addSubview(tableView)
		NSLayoutConstraint.activate([
			tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
			tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
			tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
			tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -16)
		])
	}

	func setupTable() {
		tableView.register(ExpandableTableViewCell.self, forCellReuseIdentifier: ExpandableTableViewCell.reuseIdentifier)
		tableView.dataSource = self
		tableView.delegate = self
	}

}

extension ViewController: UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		guard let cell = tableView.dequeueReusableCell(withIdentifier: ExpandableTableViewCell.reuseIdentifier, for: indexPath) as? ExpandableTableViewCell else { return UITableViewCell() }
		cell.set(dataSource[indexPath.row])
		return cell
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		dataSource.count
	}

}

extension ViewController: UITableViewDelegate {
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		UITableView.automaticDimension
	}

	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		dataSource[indexPath.row].isExpanded.toggle()
		tableView.reloadRows(at: [indexPath], with: .automatic)
	}
}

