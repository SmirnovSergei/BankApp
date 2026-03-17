//
//  SeeAllButton.swift
//  BankApp
//
//  Created by Сергей Смирнов on 17.03.2026.
//
import SwiftUI

struct SeeAllButton: View {
	var body: some View {
		Button {
			//
		} label: {
			HStack(spacing: 7) {
				Text("See all")
				Image(systemName: "chevron.down")
			}
			.customFont(type: .regular)
			.foregroundColor(Color(hex: "BDC3BA"))
		}
	}
}
