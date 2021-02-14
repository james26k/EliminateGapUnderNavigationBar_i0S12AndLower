//
//  FirstViewController.swift
//  EliminateGapUnderNavigationBar_i0S12AndLower
//
//  Created by Kohei Hayashi on 2021/02/13.
//

import UIKit

class FirstViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        navigationItem.searchController = UISearchController()

        let button: UIButton = {
            let button = UIButton(type: .system)
            button.setTitle("open", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .gray
            button.addTarget(self, action: #selector(openSecondViewController), for: .touchUpInside)
            button.showsTouchWhenHighlighted = true
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 44)
        ])
    }

    @objc func openSecondViewController() {
        // 遷移処理
    }
}
