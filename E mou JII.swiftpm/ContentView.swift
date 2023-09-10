import SwiftUI

struct ContentView: View {
    
    @State private var eyecolor = Color.white
    @State private var lookdir = ""
    @State private var Mouth = ""
    var body: some View {
        ZStack{

            Rectangle()
                .foregroundColor(.green)
                .frame(width:210, height:210)
            Circle()
                .foregroundColor(.purple)
                .frame(width: 200)
            ZStack{
                
                VStack(spacing:-60){
                    
                    HStack{
                        Circle()
                            .foregroundColor(eyecolor)
                            .frame(width:20)
                            .padding(50)
                        Circle()
                            .foregroundColor(eyecolor)
                            .frame(width:20)
                    }
                    
                    
                    Text(lookdir)
                        .font(.system(size:72))
                        .foregroundColor(.white)
                        .rotationEffect(.degrees(90))
                }
            
                VStack{
                    Text(" ")
                    .padding(30)
                    HStack{
                        Text("           ")
                        Text(Mouth)
                            .font(.system(size:72))
                            .foregroundColor(.white)
                            .rotationEffect(.degrees(90))
                    }
                }
            }
        }
        Button("Blink"){
            eyecolor = .purple
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
                eyecolor = .white
            }
            
        }
        Button("Look Up"){
            lookdir = " "
        }
        Button("Look Down"){
            lookdir = ""
        }
        Button("Smile"){
            Mouth = ")"
        }
        Button("wow"){
            Mouth = "o"
        }
        Button("Bruh"){
            Mouth = "|"
        }
    }

}


