//
//  Book.swift
//  Reinder_Book
//
//  Created by Frank Cipolla on 3/25/21.
//

import Foundation

struct Book: Identifiable, Codable {
    var id: Int
    var title: String
    var author: String
}
// Fake Data
//let books = [
//    Book(id: 1, title: "1984", author: "George Orwell"),
//    Book(id: 2, title: "Animal Farm", author: "George Orwell"),
//    Book(id: 3, title: "Brave New World", author: "Aldous Huxley")
//]
