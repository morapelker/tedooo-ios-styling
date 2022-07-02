//
//  GestureExtensions.swift
//  TedoooStyling
//
//  Created by Mor on 02/07/2022.
//

import Foundation
import UIKit

public extension UIView {
     func addGestureRecognizer(target: Any, selector: Selector, shouldClear: Bool = false) {
        if shouldClear {
            clearGestureRecognizers()
        }
        let tapRecognizer = UITapGestureRecognizer(target: target, action: selector)
        isUserInteractionEnabled = true
        tapRecognizer.name = "tedooo"
        addGestureRecognizer(tapRecognizer)
    }

    func clearGestureRecognizers() {
        if let recognizers = self.gestureRecognizers {
            for recognizer in recognizers {
                if recognizer.name == "tedooo" {
                    self.removeGestureRecognizer(recognizer)
                }
            }
        }
    }

}
