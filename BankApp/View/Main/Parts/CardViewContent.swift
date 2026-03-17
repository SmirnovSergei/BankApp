//
//  CardViewContent.swift
//  BankApp
//
//  Created by Сергей Смирнов on 17.03.2026.
//
import SwiftUI

struct CardViewContent: View {
	var body: some View {
		VStack(alignment: .leading) {
			HStack(alignment: .top, spacing: 20) {
				VStack(alignment: .leading, spacing: 20) {
					HStack {
						Text("VISA")
							.customFont(type: .bold, size: 17)
							.foregroundColor(.white)
						Spacer()
						Text("Exp 09/27")
							.customFont(type: .regular)
							.foregroundColor(Color(hex: "BDC3BA"))
					}
					
					VStack(alignment: .leading, spacing: 20) {
						VStack(alignment: .leading, spacing: 10) {
							Text("Card Balance")
								.customFont(type: .regular)
								.foregroundColor(Color(hex: "BDC3BA"))
							Text("$ 37,878.00")
								.customFont(type: .bold, size: 36)
								.foregroundColor(.white)
						}
						Text("**** **** **** 8967")
							.customFont(type: .regular, size: 17)
							.foregroundColor(Color(hex: "BDC3BA"))
					}
					Text("Sajibur Rahman")
						.customFont(type: .regular)
						.foregroundColor(Color(hex: "BDC3BA"))
				}
				Spacer()
				Button {
					//
				} label: {
					RoundedRectangle(cornerRadius: 15)
						.fill(Color(hex: "C1EF00"))
						.frame(width: 56, height: 140)
						.overlay {
							Image(.nfc)
								.resizable()
								.frame(width: 27, height: 27)
						}
				}
			}
		}
		.padding(EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 10))
	}
}
