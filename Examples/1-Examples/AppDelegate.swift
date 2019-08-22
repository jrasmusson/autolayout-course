//
//  AppDelegate.swift
//  1-Examples
//
//  Created by Jonathan Rasmusson Work Pro on 2019-07-13.
//  Copyright © 2019 Rasmusson Software Consulting. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        window?.makeKeyAndVisible()

        let anchorLabs = [
            Lab(name: "Basic Anchors", viewController: BasicAnchors()),
            Lab(name: "Safe Area Guide", viewController: SafeAreaGuide()),
            Lab(name: "Layout Margins", viewController: LayoutMargin()),
            Lab(name: "Spacer Views", viewController: SpacerViews()),
            Lab(name: "Readable Content Guide", viewController: ReadableContentGuide())
        ]
        
        let intrinsicLabs = [
            Lab(name: "Override Label", viewController: OverrideLabel()),
            Lab(name: "CHCR - Form", viewController: CHCRForm()),
            Lab(name: "CHCR - Image", viewController: CHCRImage()),
        ]

        let distributionLabs = [
            Lab(name: "Fill", viewController: Fill()),
            Lab(name: "Fill Equally", viewController: FillEqually()),
            Lab(name: "Equal Spacing", viewController: EqualSpacing()),
            Lab(name: "Equal Centering", viewController: EqualCentering()),
            Lab(name: "CHCR Fill", viewController: CHCRFill()),
        ]

        let distributionViewController = LabViewController(labs: distributionLabs, navBarTitle: "Distributions")

        let stackViewLabs = [
            Lab(name: "Simple", viewController: SimpleStackView()),
            Lab(name: "Custom View", viewController: CustomView()),
            Lab(name: "Scrollable", viewController: ScrollableView()),
            Lab(name: "Padding", viewController: PaddingView()),
            Lab(name: "Spacer", viewController: StackSpacerView()),
            Lab(name: "Distributions", viewController: distributionViewController),
        ]

        let adaptiveLabs = [
            Lab(name: "Constants", viewController: Constants()),
            Lab(name: "Constraints", viewController: Constraints()),
            Lab(name: "Visibility", viewController: Visibility()),
        ]

        let orientationLabs = [
            Lab(name: "Detect orientation", viewController: OrientationView()),
            Lab(name: "Adjust with constraints", viewController: AdjustConstraintsView()),
            Lab(name: "Adjust with spacers", viewController: AdjustSpacersView()),
        ]

        //
        // Top level
        //

        let anchorViewController = LabViewController(labs: anchorLabs, navBarTitle: "Anchors")
        let intrinsicViewController = LabViewController(labs: intrinsicLabs, navBarTitle: "Intrinsic Content Size")
        let stackViewController = LabViewController(labs: stackViewLabs, navBarTitle: "Stack Views")
        let adaptiveViewController = LabViewController(labs: adaptiveLabs, navBarTitle: "Adaptive Layouts")
        let orientationViewController = LabViewController(labs: orientationLabs, navBarTitle: "Orientations")

        let rootLabs = [
            Lab(name: "Anchors", viewController: anchorViewController),
            Lab(name: "Intrinsic Content Size", viewController: intrinsicViewController),
            Lab(name: "Stack Views", viewController: stackViewController),
            Lab(name: "Adaptive Layouts", viewController: adaptiveViewController),
            Lab(name: "Orientation", viewController: orientationViewController),
        ]

        let rootViewController = LabViewController(labs: rootLabs, navBarTitle: "Examples")
        let navigatorController = UINavigationController(rootViewController: rootViewController)
        
        window?.rootViewController = navigatorController

        return true
    }

}

