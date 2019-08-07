//
//  RowView.swift
//  1-Examples
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-07.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class RowView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)

        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {
        let label = makeLabel(withText: "Gapless Playback")
        let switch = makeSwitch(isOne: true)
    }
}
