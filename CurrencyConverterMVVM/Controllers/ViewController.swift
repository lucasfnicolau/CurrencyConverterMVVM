//
//  ViewController.swift
//  CurrencyConverterMVVM
//
//  Created by Lucas Fernandez Nicolau on 07/04/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var brlCurrencyTextField: DarkRoundedTextField!
    @IBOutlet weak var usdCurrencyTextField: CurrencyTextField!
    @IBOutlet weak var eurCurrencyTextField: CurrencyTextField!
    @IBOutlet weak var gbpCurrencyTextField: CurrencyTextField!
    @IBOutlet weak var jpyCurrencyTextField: CurrencyTextField!

    let currencyConverterViewModel = CurrencyConverterViewModel()

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextFields()
    }

    func configureTextFields() {
        brlCurrencyTextField.delegate = self
        eurCurrencyTextField.setTo(currencyType: .euro)
        gbpCurrencyTextField.setTo(currencyType: .sterling)
        jpyCurrencyTextField.setTo(currencyType: .yen)
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    func makeConversions() {
        guard let value = brlCurrencyTextField.text?.trimmingCharacters(in: .whitespacesAndNewlines) else { return }

        if value != "" {
            let brlValue = Double(value) ?? 0

            let usdValue = currencyConverterViewModel.convert(brlValue, to: .dollar)
            usdCurrencyTextField.text = usdValue

            let eurValue = currencyConverterViewModel.convert(brlValue, to: .euro)
            eurCurrencyTextField.text = eurValue

            let gbpValue = currencyConverterViewModel.convert(brlValue, to: .sterling)
            gbpCurrencyTextField.text = gbpValue

            let jpyValue = currencyConverterViewModel.convert(brlValue, to: .yen)
            jpyCurrencyTextField.text = jpyValue
        }
    }

    @IBAction func convertButtonTouched(_ sender: RoundedButton) {
        dismissKeyboard()
        makeConversions()
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        dismissKeyboard()
        makeConversions()
        return false
    }
}
