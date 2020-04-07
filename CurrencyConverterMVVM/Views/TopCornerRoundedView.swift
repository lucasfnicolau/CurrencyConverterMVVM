//
//  TopCornerRoundedView.swift
//  CurrencyConverterMVVM
//
//  Created by Lucas Fernandez Nicolau on 07/04/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import UIKit

@IBDesignable
class TopCornerRoundedView: UIView {

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setLayout()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }

    func setLayout() {
        self.layer.maskedCorners = CACornerMask([.layerMinXMinYCorner, .layerMaxXMinYCorner])
        self.layer.cornerRadius = 18
    }
}
