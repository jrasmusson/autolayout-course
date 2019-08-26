//
//  RowView.swift
//  BasicStacks
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-26.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class RowView: UIView {

    var title: String
    var isOn: Bool

    init(title: String, isOn: Bool) {
        self.title = title
        self.isOn = isOn

        super.init(frame: .zero)

        setupViews()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupViews() {
        let titleLabel = makeLabel(withText: title)
        let onOffSwith = makeSwitch(isOn: isOn)

        addSubview(titleLabel)
        addSubview(onOffSwith)

        titleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true

        onOffSwith.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        onOffSwith.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
    }

    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 31)
    }

}
