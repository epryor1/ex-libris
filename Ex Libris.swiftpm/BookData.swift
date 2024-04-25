import SwiftUI
import PhotosUI
// where the book data or books are held
class BookData : ObservableObject {
    
    @Published var books: [Book] = [
        Book(title: "A Court of Thornes and Roses", author: "Sarah J. Maas", quote: "feyre", genre: "romantasy", tropes: "romance", pages:"three hundred lol")
             ]
    
    private static func getBooksFileURL() throws -> URL {
        FileManager.default.urls(for:.documentDirectory, in:.userDomainMask)[0].appendingPathComponent("books.data")
    }
    func load(){
        do{
            let fileURL = try
            BookData.getBooksFileURL()
            let data = try Data(contentsOf: fileURL)
            books = try
            JSONDecoder().decode(
                [Book].self, from: data)
            print("Books loaded: \(books.count)")
        } catch{
            print("Failed to load from file. Backup data used")
        }
    }
    func save(){
        do{
            let fileURL = try
            BookData.getBooksFileURL()
            let data = try
            JSONEncoder().encode(books)
            try data.write(to: fileURL, options: [.atomic, .completeFileProtection])
            print("Events saved")
        } catch {
            print("Unable to save")
        }
    }
}

// what defines a book
struct Book : Identifiable, Hashable, Codable {
    var id = UUID()
    var title = ""
    var author = ""
    var quote = ""
    var genre = ""
    var tropes = ""
    var pages = ""
    public var cover = Cover<Image>()
}
