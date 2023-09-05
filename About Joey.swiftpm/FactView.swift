import SwiftUI

struct FactView: View {
    var PromptList = 
    [
        "Joey comes from an Italian-American family, and his love for food is deeply rooted in his heritage. He often craves Italian dishes and has a strong attachment to his family's recipes.",
        "Joey is an aspiring actor throughout the series. He starts off with minor roles and auditions, but his big break comes when he lands a regular role on the soap opera \"Days of Our Lives\" as Dr. Drake Ramoray.",
        "Joey is known for his infamous pickup line, \"How you doin'?\" He uses it frequently in attempts to charm women, and while it's not always successful, it's become one of his defining catchphrases.",
        "Joey shares a particularly close and supportive friendship with Chandler Bing. The two are roommates for most of the series, and their dynamic provides a lot of comedic moments and heartwarming scenes.",
        "Joey's love for food is a recurring theme on the show. He's known for his large appetite and willingness to share food, as well as his catchphrase \"Joey doesn't share food!\"",
        "When it comes to acting, Joey has some rather unconventional methods. He famously uses \"smell the fart\" acting, where he inhales deeply to get into character during intense scenes.",
        "Although not a great singer, Joey often showcases his enthusiasm for music by belting out tunes in an over-the-top manner. He even auditions for roles that require singing, like the role of \"Al Pacino's butt\" in a musical.",
        "Despite his sometimes goofy demeanor, Joey is fiercely protective of his friends. He's willing to go to great lengths to defend them and support them emotionally.",
        "Joey has several siblings, including seven sisters. His close relationship with his sisters is explored throughout the series, highlighting his caring and nurturing side.",
        "While Joey is charming and lovable, he's often portrayed as less intellectually inclined than his friends. He struggles with understanding complex ideas and concepts, leading to humorous situations."
    ]
    @State private var Fact = ""
    @State private var JoeyPic = "Joey :o"
    
    var body: some View {
        VStack {
            Image(JoeyPic)
                .resizable()
                .frame(width: 768, height: 436, alignment: .center)
                .padding()
            Text(Fact)
                .bold()
                .italic()
                .multilineTextAlignment(.center)
                .padding()
    
            Button("GENERATE FACT"){
                Fact = PromptList.randomElement() ?? "Boş iş"
            }
            .buttonStyle(.bordered)
        }
    }
}
