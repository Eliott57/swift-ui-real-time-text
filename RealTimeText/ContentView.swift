//
//  ContentView.swift
//  RealTimeText
//
//  Created by Eliott Oblinger on 12/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    
    private func resetText() -> Void{
        text = ""
    }
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    TextField(
                        "Enter what you want",
                        text: $text
                    )
                    .disableAutocorrection(true)
                }
                .textFieldStyle(.roundedBorder)
            }
            .padding()
            Text(text)
                .padding()
            if !text.isEmpty {
                Button(action: resetText){
                    Text("Effacer")
                        .foregroundColor(Color.red)
                        .underline()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
