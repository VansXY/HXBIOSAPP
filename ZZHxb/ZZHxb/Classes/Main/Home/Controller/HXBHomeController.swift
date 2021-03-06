//
//  HXBHomeController.swift
//  ZZHxb
//
//  Created by lxz on 2017/12/12.
//Copyright © 2017年 lixiangzhou. All rights reserved.
//

import UIKit
import ReactiveSwift
import Result

class HXBHomeController: HXBViewController {

    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
    }

    // MARK: - Public Property
    
    // MARK: - Private Property
}

// MARK: - UI
extension HXBHomeController {
    fileprivate func setUI() {
        showBack = false
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        HXBNavigationController(rootViewController: HXBSignInController()).presentFrom(controller: self, animated: true)
        
        HXBDepositoryOpenOrModifyController().pushFrom(controller: self, animated: true)
        
//        HXBAccountModel.shared.userInfo.zz_printPropertyValues()
//        
//        HXBAccountViewModel.shared.updateUserInfo()
    }
}

// MARK: - Action
extension HXBHomeController {
    
}

// MARK: - Network
extension HXBHomeController {
    
}

// MARK: - Delegate Internal

// MARK: -

// MARK: - Delegate External

// MARK: -

// MARK: - Helper
extension HXBHomeController {
    
}

// MARK: - Other
extension HXBHomeController {
    
}

// MARK: - Public
extension HXBHomeController {
    
}
