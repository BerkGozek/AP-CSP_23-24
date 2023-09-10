import SwiftUI


struct FavView: View {
    var body: some View {
        VStack{
            
            Text("Favourites")
                .font(.title)
                .bold()
                .padding(.bottom,20)
            HStack {
                Text(" Hobbies")
                    .font(.title2)
                Spacer()
            }
            .padding(.leading)
            
            HStack(spacing:30)
            {
                Text("🍔")
                    .font(.system(size:50))
                Text("👩")
                    .font(.system(size:50))
                Text("🎭")
                    .font(.system(size:50))
                Spacer()
            }
            .padding()
            Divider()
            HStack {
                Text("Foods")
                    .font(.title2)
                Spacer()
            }
            .padding(.leading)
            
            HStack(spacing:30)
            {
                Image("MeatBallSub")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                Image("Jam")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    
                Text("🍗")
                    .font(.system(size:50))
                Spacer()
            }
            .padding()
            Divider()
            DisclosureGroup {
               
                HStack(spacing: 30) {
                   
                    Color.black
                        .frame(width: 70, height: 70)
                        .cornerRadius(10)
                    Color.blue
                        .frame(width: 70, height: 70)
                        .cornerRadius(10)
                    Color.brown
                        .frame(width: 70, height: 70)
                        .cornerRadius(10)
                    
                    Spacer()
                    
                }
                .padding(.vertical)
                
            } label: {
                Text("These are Joey's Favorite colors:")
                    .font(.title2)
            }
            .padding()
        }
        
    }
}
