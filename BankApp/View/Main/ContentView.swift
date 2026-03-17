//
//  ContentView.swift
//  BankApp
//
//  Created by Сергей Смирнов on 11.03.2026.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		ScrollView {
			VStack(alignment: .leading) {
				VStack(alignment: .leading, spacing: 24) {
					PageHeader()
					
					VStack(alignment: .leading) {
						Text("Welcome Back 👋")
							.foregroundColor(Color(hex: "BDC3BA"))
							.customFont(type: .regular, size: 22)
						Text("Smart Solutions for Smart Money")
							.customFont(type: .medium, size: 45)
					}
					.foregroundColor(.white)
					
					ZStack(alignment: .bottomTrailing) {
						CardViewContent()
							.background(
								LinearGradient(colors: [
									Color(hex: "29311C"),
									Color(hex: "3D4436")
								], startPoint: .top, endPoint: .bottom)
							)
							.clipShape(CardView())
						AddButtonView()
					}
					
					VStack(alignment: .leading, spacing: 18) {
						HStack {
							Text("Quick Send")
								.customFont(type: .medium, size: 20)
								.foregroundColor(.white)
							Spacer()
							SeeAllButton()
						}
						
						HStack {
							ForEach(User.mockData) { user in
								UserView(user: user)
									.frame(maxWidth: .infinity)
							}
						}
					}
					.padding(20)
					.background(Color(hex: "2F352A"))
					.clipShape(RoundedRectangle(cornerRadius: 20))
					
					VStack(alignment: .leading) {
						
					}
					.padding(20)
					.frame(maxWidth: .infinity)
					.frame(height: 100)
					.background(Color(hex: "2F352A"))
					.clipShape(RoundedRectangle(cornerRadius: 20))
					.overlay(alignment: .top) {
						CutView()
							.fill(.mainBG)
							.frame(width: 70, height: 14)
							.overlay {
								RoundedRectangle(cornerRadius: 10)
									.fill(Color(hex: "2F352A"))
									.frame(width: 23, height: 3)
							}
					}
				}
			}
			.padding(.horizontal, 20)
		}
		.frame(maxWidth: .infinity)
		.background(.mainBG)
	}
}

#Preview {
	ContentView()
}
