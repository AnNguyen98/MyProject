//
//  NSNumberConvertToVND.swift
//  TinhTienTraGop
//
//  Created by An Nguyễn on 2/22/18.
//  Copyright © 2018 An Nguyễn. All rights reserved.
//

import UIKit
extension NSNumber{
    func toVND1()->String{
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.maximumFractionDigits = 0
        formatter.locale = Locale(identifier: "vi-VN")
        return formatter.string(from: self)!
    }
}
