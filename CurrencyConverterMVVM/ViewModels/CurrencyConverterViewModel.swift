//
//  CurrencyConverterViewModel.swift
//  CurrencyConverterMVVM
//
//  Created by Lucas Fernandez Nicolau on 07/04/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import Foundation

protocol CurrencyConverterViewModel {
    var brlValue: Double { get }
    var currencyTo: Currency { get }
    func convert(to currencyType: CurrencyType)
}
