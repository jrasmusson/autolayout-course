//
//  Factory.swift
//  Anchors
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-06-25.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

struct Factory {

    static func makeLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false // important!
        label.backgroundColor = .yellow
        label.text = text

        return label
    }

}
