import SwiftUI

// most of the variables and functions in this code is named after the 

struct ContentView: View {
    
    @State private var DispText = ""
    //Text Displayed on LCD
    @State private var InPocket: Float = 0.0 
    //When any of the operator buttons are clicked, the value entered before gets stored here
    @State private var Sign: Int = 0    
    //States the sign of operation
    //0: Empty
    //1: Plus
    //2: Minus
    //3: Mult
    //4: Divi
    @State private var AskaLnglSryu: Bool = false
    //bool that tells if the calculator is in repeated calculation mode
    @State private var ShnjIkri: String = "Webdings"
    //Font of the buttons & lcd
    
    @State var KwruNgsa: Float = 0.0
    //func Human Insturmentality Project had to have a return for it to have a temp value
    // when the return value wasn't used in any way, it gave an error. 
    // setting the ret. val. to this gets rid of the error, code still works perfectly

    

    //function used in any of the operator buttons
    func FloodTheLCL(riAynmi:Int){
        //Rei Ayanami Parameter is to specify which button is pressed, operators and numbers are in lines 11-15
        InPocket = Float(DispText) ?? 0
        //turns Displayed Text(String) to float, so it can be stored InPocket
        DispText = ""
        //DispText(LCD) is reset
        Sign = riAynmi
        //Sign var is set to rei ayanami(Parameter)
        AskaLnglSryu = false
        //resets the repeated calculation
    }
    
    
    //function for equals
    func HumInstrProj()->Float
    {
        var gndhIkri:Float = 0.0
        //a Temp Variable used to put the last entered number into the LCD after an operator is chosen for the thing that is repeated calculation
          
        if Sign != 0 && AskaLnglSryu == false{
            gndhIkri = Float(DispText) ?? 0
            //sets the last entered number into the LCD after an operator is chosen to Gendoh Ikari
        }
        
        
        if Sign == 0{
            InPocket = Float(DispText) ?? 0
            //Sign is n/A (outputs the same number)
        }
        else if (Sign == 1){
            DispText = String(InPocket + (Float(DispText) ?? 0))
            //adds numbers in pocket and LCD
        }
        else if (Sign == 2){
            DispText = String(InPocket - (Float(DispText) ?? 0))
            //subtracts numbers in pocket and LCD
        }
        else if (Sign == 3){
            DispText = String(InPocket * (Float(DispText) ?? 0))
            //multiplies numbers in pocket and LCD
        }
        else if (Sign == 4){
            DispText = String(InPocket / (Float(DispText) ?? 0))
            //divides numbers in pocket and LCD
        }
        
        if Sign != 0 && AskaLnglSryu == false{
            InPocket = gndhIkri  
            //The temp variable is assigned to InPocket for the repeated calculation to occur
        }
        AskaLnglSryu = true
        //turns on repeated calculation mode
        return gndhIkri
        // return value problem explained in lines 24-26
    }
    
    var body: some View {
        VStack {
            Text(String(AskaLnglSryu))
            Button{
                
            } label: 
            {
                Text(DispText)
                    
                    .frame(width: 200, height: 25,alignment: .trailing)
            }
            .disabled(true)
            .buttonStyle(.bordered)
            .font(Font.custom(ShnjIkri,size:25))
            .padding()
                
            HStack{
                
            }
            HStack{
                Button{
                    DispText = ""
                    Sign = 0
                    InPocket = 0
                } label: 
                {
                    Text("AC")
                        .frame(width: 60, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
                
                                
                                
                Button{
                    if !(DispText.contains("-")){
                        DispText = "-"+DispText
                    }
                    else{
                        DispText.remove(at: DispText.firstIndex(of: "-") ?? DispText.startIndex)
                    }
                } label: 
                {
                    Text("+-")
                        .frame(width: 48, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
                
                Button{
                    FloodTheLCL(riAynmi: 4)
                } label: 
                {
                    Text("/")
                        .frame(width: 25, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
            }
            
            
            HStack{
                Button{
                    DispText = DispText+"7"
                } label: 
                {
                    Text("7")
                        .frame(width: 25, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
                Button{
                    DispText = DispText+"8"
                } label: 
                {
                    Text("8")
                        .frame(width: 25, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
                Button{
                    DispText = DispText+"9"
                } label: 
                {
                    Text("9")
                        .frame(width: 25, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
                Button{
                    FloodTheLCL(riAynmi: 3)
                    
                } label: 
                {
                    Text("*")
                        .frame(width: 25, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
            }
            
            
            HStack{
                Button{
                    DispText = DispText+"4"
                } label: 
                {
                    Text("4")
                        .frame(width: 25, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
                Button{
                    DispText = DispText+"5"
                } label: 
                {
                    Text("5")
                        .frame(width: 25, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
                Button{
                    DispText = DispText+"6"
                } label: 
                {
                    Text("6")
                        .frame(width: 25, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
                Button{
                    FloodTheLCL(riAynmi: 2)
                } label: 
                {
                    Text("-")
                        .frame(width: 25, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
            }
            
            
            HStack{
                Button{
                    DispText = DispText+"1"
                } label: 
                {
                    Text("1")
                        .frame(width: 25, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
                Button{
                    DispText = DispText+"2"
                } label: 
                {
                    Text("2")
                        .frame(width: 25, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
                Button{
                    DispText = DispText+"3"
                } label: 
                {
                    Text("3")
                        .frame(width: 25, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
                Button{
                    FloodTheLCL(riAynmi: 1)
                } label: 
                {
                    Text("+")
                        .frame(width: 25, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
            }
            
            
            HStack{
                Button{
                    DispText = DispText+"0"
                } label: 
                {
                    Text("0")
                        .frame(width: 53, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
                
                Button{
                    if !(DispText.contains(".")){
                        DispText = DispText+"."
                    }
                } label: 
                {
                    Text(".")
                        .frame(width: 53, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
                
                Button{
                    KwruNgsa = HumInstrProj()
                } label: 
                {
                    Text("=")
                        .frame(width: 25, height: 25)
                }
                .buttonStyle(.bordered)
                .font(Font.custom(ShnjIkri,size:25))
                
            }
        }
    }
}
