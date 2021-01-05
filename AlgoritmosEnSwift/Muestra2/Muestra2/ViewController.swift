//
//  ViewController.swift
//  Muestra2
//
//  Created by Jesus Rodriguez on 06.12.20.
//

import UIKit

/// StackView
 //   -- UILabel
 //   -- UILabel
   // StackView (Horizontal)
   // UIButton - UIButton

class ViewController: UIViewController {

    let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical

        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

        let titleLabel = UILabel()
        titleLabel.text = "Titulo"
        titleLabel.font = .boldSystemFont(ofSize: 24)
        let subtitleLabel = UILabel()
        subtitleLabel.text = "Subitulo"
        subtitleLabel.font = .boldSystemFont(ofSize: 12)

        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(subtitleLabel)

        let buttonsStackView = UIStackView()
        stackView.addArrangedSubview(buttonsStackView)

        let buttonOne = UIButton()
        buttonOne.setTitle("Boton en rojo", for: .normal)
        buttonOne.setTitleColor(.red, for: .normal)
        let buttonTwo = UIButton()
        buttonTwo.setTitle("Boton en azul", for: .normal)
        buttonTwo.setTitleColor(.blue, for: .normal)
        buttonsStackView.addArrangedSubview(buttonOne)
        buttonsStackView.addArrangedSubview(buttonTwo)

    }

}

