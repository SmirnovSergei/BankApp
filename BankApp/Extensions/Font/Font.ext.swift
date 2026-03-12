//
//  Font.ext.swift
//  BankApp
//
//  Created by Сергей Смирнов on 11.03.2026.
//
import SwiftUI

extension View {
	func customFont(type: Inter, size: CGFloat = 16) -> some View {
		self
			.font(Font.custom(type.rawValue, size: size))
	}
}
