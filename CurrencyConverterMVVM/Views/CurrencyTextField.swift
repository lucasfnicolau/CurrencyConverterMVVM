//
//  CurrencyTextField.swift
//  CurrencyConverterMVVM
//
//  Created by Lucas Fernandez Nicolau on 07/04/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import UIKit

enum Currency {
    case dollar
    case euro
    case sterling
    case yen
}

class CurrencyTextField: UITextField {
    var padding = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    var currency: Currency = .dollar
    var currencyImageView: UIImageView?

    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }

    func setLayout() {
        currencyImageView = UIImageView(image: symbol(for: .dollar))
        guard let imageView = currencyImageView else { return }
        imageView.tintColor = .white
        self.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 4),
            imageView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant: self.frame.height * 0.8),
            imageView.widthAnchor.constraint(equalToConstant: self.frame.height * 0.8)
        ])
        self.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.8045804795)
        self.textColor = .white
        self.keyboardType = .decimalPad
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        self.font = self.font?.withSize(30)
    }

    override func draw(_ rect: CGRect) {
        super.draw(rect)
    }

    func setTo(currency: Currency) {
        currencyImageView?.image = symbol(for: currency)
    }

    func symbol(for currency: Currency) -> UIImage {
        let image: UIImage?

        switch currency {
        case .dollar:
            image = UIImage(systemName: "dollarsign.square.fill")
        case .euro:
            image = UIImage(systemName: "eurosign.square.fill")
        case .sterling:
            image = UIImage(systemName: "sterlingsign.square.fill")
        case .yen:
            image = UIImage(systemName: "yensign.square.fill")
        }

        return (image ?? UIImage()).withRenderingMode(.alwaysTemplate)
    }

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        padding.left = self.frame.height * 0.8 + 10
        return bounds.inset(by: padding)
    }

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        padding.left = self.frame.height * 0.8 + 10
        return bounds.inset(by: padding)
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        padding.left = self.frame.height * 0.8 + 10
        return bounds.inset(by: padding)
    }
}
