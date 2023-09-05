import SwiftUI

struct ContentView: View {
    @State private var currentImageIndex = 0
    //index of current frame
    let images = ["1", "2", "3", "4", "5"]
    //list of frames(var is let bc doesn't need to be edited)
    @State private var isTimerRunning = false
    //bool to check if timer is running
    @State private var timer: Timer?
    //Timer variable
    //? is to indicate that the variable can either hold data or be nil(non existent)
    
    var body: some View {
        VStack {
            Image(images[currentImageIndex])
                .resizable()
                .scaledToFit()
                .transition(.identity)
            //.identity makes it appear instantly
                .id(currentImageIndex)
            
            Button(isTimerRunning ? "Stop Timer" : "Start Timer"/*the : makes the button an on-offf switch*/) {
                toggleTimer()
            }
            
        }
        .onAppear {
            startTimer()
            //starts timer when program starts
        }
    }
    
    func startTimer() {
        if timer == nil {
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                withAnimation {
                    self.nextImage()
                }
            }
            isTimerRunning = true
        }
    }//if timer is nil, it gets a timer var assigned to it with time intervals of 1 sec
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
        isTimerRunning = false
    }//sets timer to nil
    
    func toggleTimer() {
        if isTimerRunning {
            stopTimer()
        } else {
            startTimer()
        }
    }//Stops timer if it is running, or starts it
    
    func nextImage() {
        currentImageIndex = (currentImageIndex + 1) % images.count
    }
    //Changes the currentImageIndex by one which causes the frame of the animation to progress
    //"% images.count" is there because when the final frame is reached, it sends it back to the first frame
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
