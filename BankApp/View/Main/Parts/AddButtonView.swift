//
//  AddButtonView.swift
//  BankApp
//
//  Created by Сергей Смирнов on 17.03.2026.
//
import SwiftUI

struct AddButtonView: View {
	var body: some View {
		Button {
			//
		} label: {
			HStack {
				ZStack {
					Circle()
						.fill(Color(hex: "131911"))
						.frame(width: 27, height: 27)
					Image(systemName: "plus")
						.resizable()
						.foregroundColor(.white)
						.frame(width: 14, height: 14)
				}
				
				Text("Add Card")
					.customFont(type: .regular, size: 14)
			}
			.foregroundColor(.black)
			.padding(5)
			.background(
				Capsule()
					.fill(Color(hex: "C1EF00"))
			)
		}
	}
}
