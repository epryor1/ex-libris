import SwiftUI

struct BookShelf: View{
 @EnvironmentObject var bookData : BookData

    var body: some View {
        List{
            ForEach(bookData.books){
                book in
                NavigationLink {
                    BookDetail(book: book)
                        .navigationTitle(book.title)
                } label: {
                    BookRow(book:book)
                }
                
            }
            .onDelete 
            {indexSet in bookData.books.remove(atOffsets: indexSet)}
        }
        .toolbar {
            ToolbarItem {
                NavigationLink("Add"){
                    BookEditor()
                        .navigationTitle("Add Book") 
                }
            }
        }
        
    }   
    
}
