//
//  FXSwiftTest.swift
//  FXNewsDemo
//
//  Created by suminjie on 2018/3/28.
//  Copyright © 2018年 苏敏杰. All rights reserved.
//

import Foundation
import UIKit
import SwiftMonkeyPaws

var paws: MonkeyPaws?

class FXSwiftTest: NSObject {
    func run() {
        paws = MonkeyPaws(view: UIApplication.shared.keyWindow!)
    }
}
