//
//  ViewController.swift
//  CurrencyConverterMVVM
//
//  Created by Lucas Fernandez Nicolau on 07/04/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var brlCurrencyTextField: CurrencyTextField!
    @IBOutlet weak var usdCurrencyTextField: CurrencyTextField!
    @IBOutlet weak var eurCurrencyTextField: CurrencyTextField!
    @IBOutlet weak var gbpCurrencyTextField: CurrencyTextField!
    @IBOutlet weak var jpyCurrencyTextField: CurrencyTextField!

//    var currencyConverterViewModel

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextFields()
    }

    func configureTextFields() {
        eurCurrencyTextField.setTo(currencyType: .euro)
        gbpCurrencyTextField.setTo(currencyType: .sterling)
        jpyCurrencyTextField.setTo(currencyType: .yen)
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

