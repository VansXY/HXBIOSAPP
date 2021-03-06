//
//  HXBAccountMainCell.swift
//  ZZHxb
//
//  Created by lxz on 2018/1/16.
//Copyright © 2018年 lixiangzhou. All rights reserved.
//

import UIKit
import ReactiveSwift

class HXBAccountMainCell: HXBSettingTableViewCell {
    
    // MARK: - Life Cycle
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public Property
    static let identifier = "HXBAccountMainCellIdentifier"
    static let cellHeight: CGFloat = 44
    
    var viewModel: HXBAccountMainCellViewModel? {
        didSet {
            guard let viewModel = viewModel else {
                return
            }
            
            if let signal = viewModel.titleSignal {
                leftLabel.reactive.attributedText <~ signal
                rightIconView.isHidden = true
            } else {
                leftLabel.text = viewModel.title
                rightIconView.isHidden = false
            }
            
            if let signal = viewModel.rightAccessoryStringSignal {
                rightLabel.reactive.attributedText <~ signal
            }
        }
    }
    
    // MARK: - Private Property
    let rightLabel = UILabel()
}

// MARK: - UI
extension HXBAccountMainCell {
    fileprivate func setUI() {
        rightIconView.image = UIImage("settingcell_arrow")
        leftLabel.textColor = hxb.color.important
        leftLabel.font = hxb.font.mainContent
        
        rightLabel.font = hxb.font.mainContent
        rightAccessoryView.addSubview(rightLabel)
        
        rightLabel.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
        
        rightAccessoryView.snp.makeConstraints { maker in
            maker.top.bottom.equalToSuperview()
            maker.right.equalTo(rightIconView.snp.left).offset(-hxb.size.view2View)
        }
    }
}

