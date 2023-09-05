import SwiftUI

struct ContentView: View {
    @State private var RectColor = Color.red
    
    
    var body: some View {
        Rectangle()
            .foregroundColor(RectColor)
            .frame(width:200,height:200)
        Button("Red"){
            RectColor = .red
        }
        Button("Black"){
            RectColor = .black
        }
        Button("Orange"){
            RectColor = .orange
        }
        Button("Purple"){
            RectColor = .purple
        }
        Button("Green"){
            RectColor = .green
        }
        Button("Blue"){
            RectColor = .blue
        }
        
    }
}
