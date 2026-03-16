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
		path.move(to: CGPoint(x: width, y: 0.66522*height))
		path.addCurve(to: CGPoint(x: 0.94737*width, y: 0.75217*height), control1: CGPoint(x: width, y: 0.71324*height), control2: CGPoint(x: 0.97644*width, y: 0.75217*height))
		path.addLine(to: CGPoint(x: 0.7228*width, y: 0.75217*height))
		path.addCurve(to: CGPoint(x: 0.72105*width, y: 0.75506*height), control1: CGPoint(x: 0.72183*width, y: 0.75217*height), control2: CGPoint(x: 0.72105*width, y: 0.75347*height))
		path.addCurve(to: CGPoint(x: 0.72051*width, y: 0.75716*height), control1: CGPoint(x: 0.72105*width, y: 0.75585*height), control2: CGPoint(x: 0.72086*width, y: 0.75661*height))
		path.addLine(to: CGPoint(x: 0.6891*width, y: 0.80644*height))
		path.addLine(to: CGPoint(x: 0.5752*width, y: 0.97741*height))
		path.addCurve(to: CGPoint(x: 0.53981*width, y: height), control1: CGPoint(x: 0.56551*width, y: 0.99194*height), control2: CGPoint(x: 0.55289*width, y: height))
		path.addLine(to: CGPoint(x: 0.05263*width, y: height))
		path.addCurve(to: CGPoint(x: 0, y: 0.91304*height), control1: CGPoint(x: 0.02356*width, y: height), control2: CGPoint(x: 0, y: 0.96107*height))
		path.addLine(to: CGPoint(x: 0, y: 0.08696*height))
		path.addCurve(to: CGPoint(x: 0.05263*width, y: 0), control1: CGPoint(x: 0, y: 0.03893*height), control2: CGPoint(x: 0.02356*width, y: 0))
		path.addLine(to: CGPoint(x: 0.94737*width, y: 0))
		path.addCurve(to: CGPoint(x: width, y: 0.08696*height), control1: CGPoint(x: 0.97644*width, y: 0), control2: CGPoint(x: width, y: 0.03893*height))
		path.addLine(to: CGPoint(x: width, y: 0.66522*height))
		path.closeSubpath()
		return path
	}
}

#Preview {
	CardView()
}
