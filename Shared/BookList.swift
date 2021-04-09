//
//  ContentView.swift
//  Shared
//
//  Created by Frank Cipolla on 3/25/21.
//

import SwiftUI

//struct ContentView: View {
//    var body: some View {
//        Text("Hello, world!")
//            .padding()
//    }
//}

struct BookList: View
{
    @ObservedObject var viewModel:BooksViewModel

    var body: some View {
        NavigationView {
            //List(books) { book in
            List(viewModel.books) { book in
                // grab the Binding so we can edit BookList
                let index = viewModel.books.firstIndex(where: { $0.id == book.id})!

                NavigationLink(
                    destination: BookEdit(book: $viewModel.books[index])) {
                    BookRow(book: book)
                }
                // BookRow(book: book)
            }
            .navigationTitle("Books")
//            .onAppear { // this will happen every time - change it
//                viewModel.fetchBooks()
            }
            
        }
    }
}

struct BookRow: View
{
    var book: Book
  
    var body: some View {
        VStack(alignment: .leading, spacing: 5.0, content: {
            Text(book.title)
                .font(.headline)
                .padding([.leading, .trailing], 5)
            Text(book.author)
                .font(.subheadline)
                .padding([.leading, .trailing], 5)
        })
        .padding([.top, .bottom], 5)
    }
}

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {

        BookList(viewModel: BooksViewModel())        //  BookList(viewModel: booksViewModel)

    }
    

    
    
}
