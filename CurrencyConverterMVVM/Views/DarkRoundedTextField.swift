//
//  DarkRoundedTextField.swift
//  CurrencyConverterMVVM
//
//  Created by Lucas Fernandez Nicolau on 07/04/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import UIKit

@IBDesignable
class DarkRoundedTextField: UITextField {

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setLayout()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }

    func setLayout() {
        self.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8045804795)
        self.textColor = .white
        self.keyboardType = .decimalPad
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        self.font = self.font?.withSize(30)
        self.textAlignment = .center
        self.returnKeyType = .done
        self.attributedPlaceholder = NSAttributedString(string: "R$ value", attributes: [
            NSAttributedString.Key.foregroundColor: UIColor.lightGray
        ])
    }
}
