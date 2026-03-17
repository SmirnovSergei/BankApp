//
//  UserView.swift
//  BankApp
//
//  Created by Сергей Смирнов on 17.03.2026.
//
import SwiftUI

struct UserView: View {
	var user: User
	
	var body: some View {
		Button {
			//
		} label: {
			VStack {
				Image(user.image)
					.resizable()
					.frame(width: 60, height: 60)
					.background(Color.white)
					.clipShape(Circle())
				Text(user.name)
					.customFont(type: .regular)
					.foregroundColor(Color(hex: "BDC3BA"))
			}
		}
	}
}
