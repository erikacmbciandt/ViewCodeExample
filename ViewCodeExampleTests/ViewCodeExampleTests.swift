//
//  ViewCodeExampleTests.swift
//  ViewCodeExampleTests
//
//  Created by Erika C. Matesz Bueno on 27/07/22.
//

import XCTest
// import SnapshotTesting
import FBSnapshotTestCase
@testable import ViewCodeExample

// https://github.com/pointfreeco/swift-snapshot-testing

//class ViewCodeExampleTests: XCTestCase {
//
//    override func setUp() {
//        super.setUp()
//        isRecording = false
//    }
//
//    func test_home() {
//        let homeViewController = HomeViewController()
//        assertSnapshot(matching: homeViewController, as: .image)
//    }
//
//}

// https://github.com/uber/ios-snapshot-test-case

class ViewCodeExampleTests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
        recordMode = false
    }

    func test_home() {
        let homeViewController = HomeViewController()
        FBSnapshotVerifyView(homeViewController.view)
    }

}
