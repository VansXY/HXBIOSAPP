//
//  HXBNavigationController.swift
//  ZZHxb
//
//  Created by lxz on 2017/12/12.
//Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

class HXBNavigationController: UINavigationController {

    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
        setFullScreenBackGesture()
    }

    // MARK: - Public Property
    
    // MARK: - Private Property
    
}

// MARK: - UI
extension HXBNavigationController {
    fileprivate func setUI() {
        navigationBar.shadowImage = UIImage()
    }
}

// MARK: - Action
extension HXBNavigationController {
    
}

// MARK: - Delegate Internal

// MARK: - UIGestureRecognizerDelegate
extension HXBNavigationController: UIGestureRecognizerDelegate {
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return childViewControllers.count != 1 && value(forKey: "_isTransitioning") as! Bool == false
    }
}

// MARK: - Delegate External

// MARK: -

// MARK: - Helper
extension HXBNavigationController {
}

// MARK: - Other
extension HXBNavigationController {
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if childViewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
        
    }
    
    fileprivate func setFullScreenBackGesture() {
        let target = interactivePopGestureRecognizer?.delegate
        let sel = Selector(("handleNavigationTransition:"))
        let gesture = UIPanGestureRecognizer(target: target, action: sel)
        gesture.delegate = self
        view.addGestureRecognizer(gesture)
        interactivePopGestureRecognizer?.isEnabled = false
    }
}

// MARK: - Public
extension HXBNavigationController {
    
}

