//
//  ContentView.swift
//  Bullseye
//
//  Created by Chukwuka Akibor on 11.03.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue: Double = 50.0

    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text("89")
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                // slider update
                Slider(value: self.$sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action: {
                print("Hello Mena")
                self.alertIsVisible = true
            }) {
               Text("Hit Me")
            }.alert("Hello there!", isPresented: $alertIsVisible) {
         
                Button("Awesome!") {}
            } message: {
                let roundedValue: Int = Int(self.sliderValue.rounded())
                Text("The slider's value is \(roundedValue).")
            }
//            Button(action: {
//                print("Hello Mena")
//                self.alertIsVisible = true
//            }) {
//               Text("Knock Knock")
//            }.alert("Who's There?", isPresented: $alertIsVisible) {
//                Button("Little old lady who?") {}
//            } message: {
//                Text("Little old lady.")
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
          
    }
}
