
//
//  CutView.swift
//  BankApp
//
//  Created by Сергей Смирнов on 17.03.2026.
//
import SwiftUI

struct CutView: Shape {
	func path(in rect: CGRect) -> Path {
		var path = Path()
		let width = rect.size.width
		let height = rect.size.height
		path.move(to: CGPoint(x: 0.01737 * width, y: 0))
		
		path.addCurve(to: CGPoint(x: width, y: 0),
					  control1:CGPoint(x: -0.16235 * width, y: 0),
					  control2: CGPoint(x: 1.11461 * width, y: 0))
		
		path.addCurve(to: CGPoint(x: 0.72206 * width, y: height),
					  control1:CGPoint(x: 0.86867 * width, y: 0),
					  control2: CGPoint(x: 0.81665 * width, y: height))
		
		path.addCurve(to: CGPoint(x: 0.5045 * width, y: height),
					  control1:CGPoint(x: 0.62647 * width, y: height),
					  control2: CGPoint(x: 0.5045 * width, y: height))
		
		path.addCurve(to: CGPoint(x: 0.29641 * width, y: height),
					  control1:CGPoint(x: 0.5045 * width, y: height),
					  control2: CGPoint(x: 0.391 * width, y: height))
		
		path.addCurve(to: CGPoint(x: 0.01737 * width, y: 0),
					  control1:CGPoint(x: 0.20182 * width, y: height),
					  control2: CGPoint(x: 0.19709 * width, y: 0))
		
		path.closeSubpath()
		return path
	}
}
