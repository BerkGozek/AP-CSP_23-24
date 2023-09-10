import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            Text("All About")
                .font(.largeTitle)
                .bold()

            Image("Joey portrait")
                .resizable()
                .frame(width: 500, height: 500, alignment: .center)
                .clipShape(Circle())
                
            Text("Joey Tribbiani")
                .font(.title)

        }
        
    }
}
