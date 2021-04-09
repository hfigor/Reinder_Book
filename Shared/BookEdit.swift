//
//  BookEdit.swift
//  Reinder_Book
//
//  Created by Frank Cipolla on 4/2/21.
//

import SwiftUI

struct BookEdit: View {
    
    @Binding var book: Book
    
    var body: some View {
        Form {
            Section(header: Text("About This Book")) {
                TextField("Title", text: $book.title)
                TextField("Author", text: $book.author)
            }
        }
        
    }
}

struct BookEdit_Previews: PreviewProvider {
    static var previews: some View {
       // provide fake Book binding by using .constant()
        BookEdit(book: .constant(Book(id: 1, title: "1984", author: "George Orwell")))
    }
}
