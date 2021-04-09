//
//  Reinder_BookApp.swift
//  Shared
//
//  Created by Frank Cipolla on 3/25/21.
//

import SwiftUI

@main
struct Reinder_BookApp: App {
    var body: some Scene {
        WindowGroup {
            //BookList()
            BookList(viewModel: booksViewModel)

        }
    }
    let booksViewModel = BooksViewModel()
    
}
