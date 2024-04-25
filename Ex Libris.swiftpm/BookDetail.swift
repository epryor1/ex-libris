import SwiftUI

struct BookDetail: View {
    let book : Book
    
    @EnvironmentObject var bookData : BookData
    
    var body: some View {
        VStack(spacing: 20){
            //Group{
            HStack(alignment: .top, spacing: 20){
                VStack{
                    ZStack{
                        Rectangle()
                            .foregroundColor(.clear)
                        
                        Image("coverFill ")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(15)
                            .frame(maxHeight: 300)
                    }
                        Text("Rating: ⭐️⭐️⭐️⭐️⭐️")
                            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                            .font(.caption)
                    
                }
                VStack{
                    VStack{
                        Text(book.title)
                            .fixedSize(horizontal: false, vertical: true)
                            .font(.largeTitle)
                            .multilineTextAlignment(.center)
                            .scaledToFit()
                        
                        Text("By \(book.author)")
                            .font(.caption)
                        Divider()
                        ZStack{
                            VStack{
                                Text("Genre: \(book.genre)")
                                    .font(.caption)
                                Text("Tropes: \(book.tropes)")
                                    .font(.caption)
                                Text("Pages: \(book.pages)")
                                    .font(.caption)
                            }
                        
                            .multilineTextAlignment(.center)
                            
                        }
                    }
                    .frame(maxWidth: 300)
                    .padding()
                    
                }
            }
            Divider()
            VStack{
            Text("Add 'thoughts: ' here")
            }
            Spacer()
            Divider()
            HStack(alignment:.top){
                ZStack{
                    Rectangle()
                        .foregroundColor(.clear)
                    VStack{
                        Text("Favorite Quote")
                            .font(.title3)
                            .foregroundColor(.secondary)
                        Text(book.quote)
                        Spacer()
                    }
                }
                Spacer()
                Rectangle()
                    .foregroundColor(.clear)
            }
            Spacer()
        }
    }
    
}   

