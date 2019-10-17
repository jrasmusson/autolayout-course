//
//  RowView.swift
//  CustomViewsSolution
//
//  Created by Jonathan Rasmusson Work Pro on 2019-10-17.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
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

        // Everything flush to edges...
        titleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true

        onOffSwith.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        onOffSwith.centerYAnchor.constraint(equalTo: titleLabel.centerYAnchor).isActive = true
    }

    // A suggestion about size. But one that can be overridden.
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 31)
    }

}
