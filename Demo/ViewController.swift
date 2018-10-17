//
//  ViewController.swift
//  Demo
//
//  Created by Roy Hsu on 2018/10/17.
//  Copyright © 2018 TinyWorld. All rights reserved.
//

// MARK: - ViewController

import UIKit

public final class ViewController: UIViewController {

    // MARK: View Life Cycle

    public final override func viewDidLoad() {

        super.viewDidLoad()

        setUpRootView(view)

    }

    // MARK: Set Up

    fileprivate final func setUpRootView(_ view: UIView) {

        view.backgroundColor = .white

    }

}
