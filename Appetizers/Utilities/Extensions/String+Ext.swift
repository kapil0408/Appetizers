//
//  String+ext.swift
//  Appetizers
//
//  Created by Kapil Kumar on 20/02/24.
//

import Foundation

extension String {
    var isValidEmail: Bool{
        let emailFormat = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
