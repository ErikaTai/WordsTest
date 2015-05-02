//
//  Words.swift
//  WordsTest
//
//  Created by ERIKA on 2015/05/02.
//  Copyright (c) 2015年 RainbowApps. All rights reserved.
//

import Foundation

class Words {
    private let words: [[String]] = [
        ["apple", "りんご"],
        ["boy", "男の子"],
        ["girl", "女の子"],
        ["eye", "目"],
        ["ear", "耳"],
        ["mother", "母"],
        ["father", "父"],
        ["neccesary", "必要な"],
        ["important", "大切な"],
        ["tea", "茶"],
        ["often", "しばしば"],
        ["good", "良い"],
        ["blue", "青"],
        ["red", "赤"],
        ["yellow", "黄"]
    ]
    
    internal func getEnglish(index: Int)-> String {
        return words[index][0]
    }
    
    internal func getJapanese(index: Int)-> String{
        return words[index][1]
    }
    
    internal func getCount()-> UInt32 {
        return UInt32(words.count)
    }
}