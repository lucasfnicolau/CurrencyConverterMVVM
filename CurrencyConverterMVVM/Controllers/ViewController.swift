//
//  ViewController.swift
//  CurrencyConverterMVVM
//
//  Created by Lucas Fernandez Nicolau on 07/04/20.
//  Copyright © 2020 Lucas Fernandez Nicolau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var currencyTextField: CurrencyTextField!
    var n = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func changeCurr(_ sender: Any) {
        let curr: [Currency] = [
            .dollar,
            .euro,
            .sterling,
            .yen
        ]

        if n < curr.count - 1 { n += 1 }
        else if n > 0 { n -= 1 }

        currencyTextField.setTo(currency: curr[n])

    }
}

