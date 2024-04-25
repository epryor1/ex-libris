import SwiftUI

struct MainNavigation: View {
    
    var body: some View {
        
        
        List {
            Text("Library App")
            
            Section("Options"){
                NavigationLink("Book Shelf"){
                    BookShelf()
                }
                
            }
        }
        
        
    }
}


struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        VStack {
            MainNavigation()
        }
    }
}
