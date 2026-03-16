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
			.padding(8)
			.background(
				Capsule()
					.fill(Color(hex: "C1EF00"))
			)
		}
	}
}
