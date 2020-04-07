//
//  CurrencyConverterViewModel.swift
//  CurrencyConverterMVVM
//
//  Created by Lucas Fernandez Nicolau on 07/04/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import Foundation

protocol CurrencyConverterViewModel {
    var currencyFrom: Currency { get }
    var currencyTo { get }
}