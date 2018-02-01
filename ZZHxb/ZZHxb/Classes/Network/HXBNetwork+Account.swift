//
//  HXBNetwork+Account.swift
//  ZZHxb
//
//  Created by lxz on 2017/12/18.
//  Copyright © 2017年 lixiangzhou. All rights reserved.
//

import Foundation

extension HXBNetwork {
    
    /// 获取账户内数据
    static func getAccountData(completion: @escaping HXBRequestCompletionCallBack) {
        HXBNetworkManager.request(url: hxb.api.account, completionClosure: completion)
    }
    
    static func updateUserInfo(completion: @escaping HXBRequestCompletionCallBack) {
        HXBNetworkManager.request(url: hxb.api.userinfo, completionClosure: completion)
    }
}
