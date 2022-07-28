//
//  HomeViewController.swift
//  ViewCodeExample
//
//  Created by Erika Cristina Bueno on 04/07/22.
//

import UIKit

final class HomeViewController: UIViewController {

    private lazy var redPill: UILabel = {
        let element = UILabel(frame: .zero)
        element.backgroundColor = .red
        element.translatesAutoresizingMaskIntoConstraints = false
        element.layer.cornerRadius = 20
        element.layer.masksToBounds = true
        element.text = "Red Pill"
        element.textColor = .white
        element.textAlignment = .center
        return element
    }()

    private lazy var bluePill: UILabel = {
        let element = UILabel(frame: .zero)
        element.backgroundColor = .blue
        element.translatesAutoresizingMaskIntoConstraints = false
        element.layer.cornerRadius = 20
        element.layer.masksToBounds = true
        element.text = "Blue Pill"
        element.textColor = .white
        element.textAlignment = .center
        return element
    }()

    private lazy var button: UIButton = {
        let element = UIButton(frame: .zero)
        element.translatesAutoresizingMaskIntoConstraints = false
        element.backgroundColor = .lightGray
        element.setTitle("Choose!", for: .normal)
        element.setTitleColor(.black, for: .normal)
        element.addTarget(self, action: #selector(takeThePill), for: .touchUpInside)
        return element
    }()

    private lazy var option: UILabel = {
        let element = UILabel(frame: .zero)
        element.translatesAutoresizingMaskIntoConstraints = false
        element.textColor = .black
        element.textAlignment = .center
        return element
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        view.backgroundColor = .systemGray6

        view.addSubview(bluePill)
        view.addSubview(redPill)
        view.addSubview(button)
        view.addSubview(option)

        bluePill.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor, constant: -100).isActive = true
        bluePill.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        bluePill.trailingAnchor.constraint(equalTo: self.redPill.leadingAnchor, constant: -10).isActive = true
        bluePill.heightAnchor.constraint(equalToConstant: 40).isActive = true

        redPill.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor, constant: -100).isActive = true
        redPill.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        redPill.leadingAnchor.constraint(equalTo: self.bluePill.trailingAnchor, constant: 10).isActive = true
        redPill.widthAnchor.constraint(equalTo:self.bluePill.widthAnchor).isActive = true
        redPill.heightAnchor.constraint(equalToConstant: 40).isActive = true

        button.topAnchor.constraint(equalTo: self.redPill.bottomAnchor, constant: 10).isActive = true
        button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true

        option.topAnchor.constraint(equalTo: self.button.bottomAnchor, constant: -5).isActive = true
        option.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        option.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10).isActive = true
        option.heightAnchor.constraint(equalToConstant: 60).isActive = true

    }

    @objc private func takeThePill() {
        option.text = Bool.random() ? "Red Pill" : "Blue Pill"
        print(option.text ?? "None")
    }
}
