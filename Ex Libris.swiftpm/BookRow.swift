import SwiftUI

struct BookRow: View {
    var book : Book
    
    var body: some View {
        HStack{
        
            Image("coverFill ")
                .resizable()
                .scaledToFit()
                .frame(maxHeight: 100)
                .cornerRadius(10)
                
            
            VStack{
                Text(book.title)
                    .font(.title2)
                    
                Spacer()
                Text(book.author)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }  
            .frame(maxHeight: 50)  
            
        }
        .padding()
    }
}
struct BookRow_Previews: PreviewProvider{
    static var previews: some View{
        BookRow(book: Book(title: "A Court of Thornes and Roses", author: "Sarah J. Maas", quote: "hello, feyre, darling"))
    }
}
