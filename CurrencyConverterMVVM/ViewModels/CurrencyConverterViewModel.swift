//
//  CurrencyConverterViewModel.swift
//  CurrencyConverterMVVM
//
//  Created by Lucas Fernandez Nicolau on 07/04/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import Foundation

class CurrencyConverterViewModel: NSObject, CurrencyConverterViewModelProtocol {

    var currencies: [CurrencyType: Currency]

    override init() {
        self.currencies = [:]
        self.currencies[.dollar] = Currency(currencyType: .dollar, rate: 0.19)
        self.currencies[.euro] = Currency(currencyType: .euro, rate: 0.18)
        self.currencies[.sterling] = Currency(currencyType: .dollar, rate: 0.16)
        self.currencies[.yen] = Currency(currencyType: .dollar, rate: 20.83)
    }

    func convert(_ brlValue: Double, to currencyType: CurrencyType) -> String {
        let newValue = brlValue * (currencies[currencyType]?.rate ?? 1)
        return String(format: "%.2f", newValue)
    }

}
