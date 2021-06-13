//
//  ComposeDelegate.swift
//  DelegatePattern
//
//  Created by 홍성범 on 2021/06/13.
//

import UIKit

protocol ComposeDelegate {
    func composer(_ vc: UIViewController, didInput value: String?)
    func composerDidCancel(_ vc: UIViewController)
}


