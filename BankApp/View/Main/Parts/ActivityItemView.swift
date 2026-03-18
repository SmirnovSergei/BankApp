//
//  ActivityItemView.swift
//  BankApp
//
//  Created by Сергей Смирнов on 18.03.2026.
//
import SwiftUI

struct ActivityItemView: View {
	var image: String
	var serviceName: String
	var date: String
	var sum: String
	
	var body: some View {
		HStack {
			HStack {
				ZStack {
					Circle()
						.fill(Color(hex: "3E4439"))
						.frame(width: 60, height: 60)
					Image(image)
						.resizable()
						.frame(width: 30, height: 30)
				}
				VStack(alignment: .leading) {
					Text(serviceName)
						.customFont(type: .medium, size: 20)
						.foregroundStyle(.white)
					Text(date)
						.customFont(type: .regular)
						.foregroundColor(Color(hex: "BDC3BA"))
				}
			}
			Spacer()
			Text(sum)
				.customFont(type: .medium, size: 20)
				.foregroundStyle(.white)
		}
	}
}
