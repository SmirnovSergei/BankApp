//
//  PageHeader.swift
//  BankApp
//
//  Created by Сергей Смирнов on 11.03.2026.
//
import SwiftUI

struct PageHeader: View {
	var body: some View {
		HStack {
			Button {
				// Action
			} label: {
				Image(.ava)
					.resizable()
					.frame(width: 60, height: 60)
					.clipShape(Circle())
			}
			Spacer()
			
			HStack(spacing: 10) {
				Button {
					// Action2
				} label: {
					ZStack {
						Circle()
							.fill(Color(hex: "F9F9F9"))
							.frame(width: 60, height: 60)
						Image(.glass)
							.resizable()
							.frame(width: 24, height: 24)
					}
				}
				
				Button {
					// Action3
				} label: {
					ZStack {
						Circle()
							.fill(Color(hex: "F9F9F9"))
							.frame(width: 60, height: 60)
						Image(.bell)
							.resizable()
							.frame(width: 24, height: 24)
					}
				}
			}
		}
	}
}

#Preview {
	ContentView()
}
