//
//  NVActivityIndicatorDelegate.swift
//  NVActivityIndicatorView
//
// The MIT License (MIT)

// Copyright (c) 2016 Vinh Nguyen

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.
//

#if canImport(UIKit)
import UIKit

// swiftlint:disable:next class_delegate_protocol
protocol NVActivityIndicatorAnimationDelegate {
    func setUpAnimation(in layer: CALayer, size: CGSize, color: UIColor)
    func setUpAnimation(in layer: CALayer, size: CGSize, style: NVActivityIndicatorStyle)
}
extension NVActivityIndicatorAnimationDelegate {
    func setUpAnimation(in layer: CALayer, size: CGSize, color: UIColor) {}
    func setUpAnimation(in layer: CALayer, size: CGSize, style: NVActivityIndicatorStyle) {
        setUpAnimation(in: layer, size: size, color: style.color)
    }
}
#endif
