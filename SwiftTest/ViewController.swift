//
//  ViewController.swift
//  SwiftTest
//
//  Created by Maarten Billemont on 2018-04-08.
//  Copyright © 2018 Lyndir. All rights reserved.
//

import UIKit

class SwiftyViewConfiguration {
    init(view: UIView, configurations: (SwiftyViewConfiguration, SwiftyViewConfiguration) -> Void) {
    }

    @discardableResult
    func add(_: (UIView, UIView) -> NSLayoutConstraint) -> SwiftyViewConfiguration {
        return self
    }

    @discardableResult
    func activate() -> SwiftyViewConfiguration {
        return self
    }
}

class ViewController: UIViewController {
    override func loadView() {
        super.loadView()

        // 1. Parameter Info lookup does not work.
        ViewConfiguration( view: self.view ) { active, inactive in
            // 2. Completion on `active` and `inactive` does not work.
            active.add {
                // 3. Completion on `$0` and `$1` does not work.
                $0.topAnchor.constraint( equalTo: $1.topAnchor )
            }
        }.activate()

        // All of these work fine here.
        SwiftyViewConfiguration( view: self.view ) { active, inactive in
            active.add {
                $0.topAnchor.constraint( equalTo: $1.topAnchor )
            }
        }.activate()
    }
}
