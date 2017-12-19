//
//  HXBSignInController.swift
//  ZZHxb
//
//  Created by lxz on 2017/12/19.
//Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit

class HXBSignInController: HXBViewController {

    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUI()
        addObservers()
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//    }
//    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//    }
//    
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//    }
//    
//    deinit {
//        
//    }

    // MARK: - Public Property
    
    // MARK: - Private Property
    
}

// MARK: - Observers
extension HXBSignInController {
    fileprivate func addObservers() {
        
    }
}

// MARK: - UI
extension HXBSignInController {
    fileprivate func setUI() {
        title = "注册"
        
        hideNavigationBar = false
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        let waveView = HXBTopWaveView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 111))
        view.addSubview(waveView)
    }
}

// MARK: - Action
extension HXBSignInController {
    
}

// MARK: - Network
extension HXBSignInController {
    
}

// MARK: - Delegate Internal

// MARK: -

// MARK: - Delegate External

// MARK: -

// MARK: - Helper
extension HXBSignInController {
    
}

// MARK: - Other
extension HXBSignInController {
    
}

// MARK: - Public
extension HXBSignInController {
    
}

