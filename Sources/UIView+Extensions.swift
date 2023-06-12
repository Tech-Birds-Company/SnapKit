//
//  UIView.swift
//  SnapKit
//
//  Created by Musa on 12.06.2023.
//  Copyright © 2023 SnapKit Team. All rights reserved.
//

#if os(iOS) || os(tvOS)
    import UIKit
#endif

@available(iOS 8.0, *)
public extension UIView {
    func addSubview(
        _ subview: UIView,
        withConstraints closure: (_ make: ConstraintMaker) -> Void
    ) {
        subview.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(subview)
        subview.snp.makeConstraints(closure)
    }
}
