//
//  CardView.swift
//  BankApp
//
//  Created by Сергей Смирнов on 12.03.2026.
//
import SwiftUI

struct CardView: Shape {
	func path(in rect: CGRect) -> Path {
		var path = Path()
		let width = rect.size.width
		let height = rect.size.height
		path.move(to: CGPoint(x: 0.94737 * width, y: 0))
		
		path.addCurve(to: CGPoint(x: width, y: 0.08734 * height),
					  control1: CGPoint(x: 0.97644 * width, y: 0),
					  control2: CGPoint(x: width, y: 0.0391 * height))
		
		path.addLine(to: CGPoint(x: width, y: 0.72489 * height))
		
		path.addCurve(to: CGPoint(x: 0.94737 * width, y: 0.81223 * height),
					  control1: CGPoint(x: width, y: 0.77313 * height),
					  control2: CGPoint(x: 0.97644 * width, y: 0.81223 * height))
		
		path.addLine(to: CGPoint(x: 0.73096 * width, y: 0.81223 * height))
		
		path.addCurve(to: CGPoint(x: 0.68893 * width, y: 0.84699 * height),
					  control1: CGPoint(x: 0.71444 * width, y: 0.81223 * height),
					  control2: CGPoint(x: 0.69888 * width, y: 0.8251 * height))
		
		path.addLine(to: CGPoint(x: 0.63522 * width, y: 0.96524 * height))
		
		path.addCurve(to: CGPoint(x: 0.59319 * width, y: height),
					  control1: CGPoint(x: 0.62527 * width, y: 0.98713 * height),
					  control2: CGPoint(x: 0.60971 * width, y: height))
		
		path.addLine(to: CGPoint(x: 0.05263 * width, y: height))
		
		path.addCurve(to: CGPoint(x: 0, y: 0.91266 * height),
					  control1: CGPoint(x: 0.02356 * width, y: height),
					  control2: CGPoint(x: 0, y: 0.9609 * height))
		
		path.addLine(to: CGPoint(x: 0, y: 0.08734 * height))
		
		path.addCurve(to: CGPoint(x: 0.05263 * width, y: 0),
					  control1: CGPoint(x: 0, y: 0.0391 * height),
					  control2: CGPoint(x: 0.02356 * width, y: 0))
		
		path.addLine(to: CGPoint(x: 0.94737 * width, y: 0))
		
		path.closeSubpath()
		return path
	}
}
