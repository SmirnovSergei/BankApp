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
						ZStack {
							CardViewContent()
								.background(
									LinearGradient(colors: [
										Color(hex: "29311C"),
										Color(hex: "3D4436")
									], startPoint: .top, endPoint: .bottom)
								)
								.clipShape(CardView())
							// FIXME: Change star`s color
							Image(.star)
								.resizable()
								.frame(width: 35, height: 35)
								.offset(x: 75, y: -20)
							Image(.star)
								.resizable()
								.frame(width: 20, height: 20)
								.offset(x: 40, y: 40)
						}
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
						HStack {
							Text("Recent Activity")
								.customFont(type: .medium, size: 20)
								.foregroundColor(.white)
							Spacer()
							SeeAllButton()
						}
						
						VStack(alignment: .leading, spacing: 15) {
							ActivityItemView(image: "paypal", serviceName: "PayPal", date: "Friday, 3 Okt 2025", sum: "+$89.00")
							Divider()
								.frame(height: 1.4)
								.background(Color(hex: "3E4439"))
							ActivityItemView(image: "amazon", serviceName: "Amazon", date: "Monday, 29 Sep 2025", sum: "+$56.00")
						}
						.padding(20)
						.frame(maxWidth: .infinity)
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
