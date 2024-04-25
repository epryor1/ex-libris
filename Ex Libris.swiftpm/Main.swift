import SwiftUI

@main
struct LibraryApp: App{
    @StateObject var bookData = BookData()
    @State var newBook : Book = Book(title: "", author: "", quote: "")
    var body: some Scene{
         
        WindowGroup{
            NavigationStack { 
                MainNavigation()
                    .task {
                        bookData.load()
                    } 
                    .onChange(of: bookData.books){
                    _ in bookData.save()
                }
                
            }
            .environmentObject(bookData)
            
            
        }
    }
}
