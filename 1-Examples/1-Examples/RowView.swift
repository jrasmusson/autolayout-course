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
        let titleLabel = makeLabel(withText: "Gapless Playback")
        let onOffSwith = makeSwitch(isOn: true)

        // With `UIView` we are the view ourselves, so just add controls and layout to ourselves
        addSubview(titleLabel)
        addSubview(onOffSwith)

        // When it comes to layout, lay the control out flush to it's sides
        // and let the parent view decide what additional constraints and padding to add

        // This is all we need to layout the label as `UILabel`s have their own intrinsic content size
        // for height and width
        titleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true

        // Repeat for the switch
        onOffSwith.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        onOffSwith.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true

        // Discussion:
        //
        // Notice how we didn't specifiy the gap between the label and swtich. That's perfectly OK.
        // We are designing this so that the label is pinned to the left, the switch to the right,
        // and the gap between them can flex and be calculted dynamically based on the size of the
        // device and screen.
    }
}
