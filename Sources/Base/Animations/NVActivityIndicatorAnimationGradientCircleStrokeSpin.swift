//
//  NVActivityIndicatorAnimationGradientCircleStrokeSpin.swift
//  NVActivityIndicatorView
//
//  Created by John Mao on 2022/6/21.
//

#if canImport(UIKit)
import UIKit

class NVActivityIndicatorAnimationGradientCircleStrokeSpin: NVActivityIndicatorAnimationDelegate {

    func setUpAnimation(in layer: CALayer, size: CGSize, color: UIColor) {
        let duration: Double = 1.0

        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation")
        rotationAnimation.byValue = Float.pi * 2
        rotationAnimation.timingFunction = CAMediaTimingFunction(name: .linear)

        let groupAnimation = CAAnimationGroup()
        groupAnimation.animations = [rotationAnimation]
        groupAnimation.duration = duration
        groupAnimation.repeatCount = .infinity
        groupAnimation.isRemovedOnCompletion = false
        groupAnimation.fillMode = .forwards

        let frame = CGRect(
            x: (layer.bounds.width - size.width) / 2,
            y: (layer.bounds.height - size.height) / 2,
            width: size.width,
            height: size.height
        )

        let gradientRingLayer = NVGraintCircleLayer(frame: frame, fromColor: color, toColor: UIColor.white, linewidth: 4.0, toValue: 0.99)

        gradientRingLayer.add(groupAnimation, forKey: "animation")
        gradientRingLayer.frame = frame
        layer.addSublayer(gradientRingLayer)
    }
}
#endif
