import SwiftUI

struct BookEditor: View {
    @State var newBook : Book = Book(title: "", author: "", quote: "", genre: "", tropes: "", pages: "")
    @EnvironmentObject var bookData : BookData
    @Environment(\.dismiss) var dismiss
        var body: some View {
            Group{
                VStack{
                    Form {
                        Section{
                            TextField("title . . ", text: $newBook.title)
                        }
                        
                        Section{
                            TextField("author . . .", text:$newBook.author)
                        }
                        
                        Section{
                            TextField("genre . . .", text:$newBook.genre)
                        }
                        
                        Section{
                            TextField("trope . . .", text:$newBook.tropes)
                        }
                        
                        Section{
                            TextField("favorite quote . . .", text:$newBook.quote)
                        }
                   //     Section("Page Number"){
                   //         TextField("page number", text:$newBook.page)
                   //     }
                        
                        Section("Book Preview"){
                            BookRow(book:newBook)
                    }
                    }
                } 
                .toolbar{
                    ToolbarItem {
                        Button("Add"){
                            bookData.books.append(newBook)
                            dismiss() 
                        }
                    }
                }
            }
        }

}
