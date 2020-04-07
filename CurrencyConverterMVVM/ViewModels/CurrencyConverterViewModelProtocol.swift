//
//  CurrencyConverterViewModelProtocol.swift
//  CurrencyConverterMVVM
//
//  Created by Lucas Fernandez Nicolau on 07/04/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import Foundation

protocol CurrencyConverterViewModelProtocol {
    var currencies: [CurrencyType: Currency] { get }
    func convert(brlValue: Double, to currencyType: CurrencyType) -> Double
}
