//
//  User.swift
//  BankApp
//
//  Created by Сергей Смирнов on 17.03.2026.
//
import Foundation

struct User: Identifiable, Hashable {
	let id = UUID()
	let name: String
	let image: String
	
	static var mockData: [User] = [
		User(name: "James", image: "james"),
		User(name: "Blake", image: "blake"),
		User(name: "Luke", image: "luke"),
		User(name: "Jack", image: "jack")
	]
}
