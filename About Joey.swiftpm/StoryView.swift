import SwiftUI

struct StoryView: View {
    var body: some View {
        VStack{
            
            ScrollView{
                
                VStack(alignment:.leading){
                    Text("Joey Tribbiani is a character portrayed by actor Matt LeBlanc in the popular TV show \"Friends.\" He was born and raised in Queens, New York, in a working-class Italian-American family. Joey's father was a pipefitter and his mother was a homemaker. He has seven sisters, and growing up in a crowded household, he developed a close-knit bond with his family. Joey's backstory includes pursuing an acting career in New York City, often struggling to land significant roles and relying on his charm and good looks to get by.")
                        .font(.largeTitle)
                    Text("Joey Tribbiani")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(in: RoundedRectangle(cornerRadius: 15))
                .padding()
            }
            .background(Image( "Joey"))
        }
    }
}
