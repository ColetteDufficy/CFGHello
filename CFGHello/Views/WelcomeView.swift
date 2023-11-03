//
//  ContentView.swift
//  CFGHello
//
//  Created by colgate on 26/10/2023.
//

import SwiftUI //allows u to use SwiftUI features

    // a new struct is being created called ContentView. View is also a protocol
struct WelcomeView: View {
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("Draughts")
                    .font(.largeTitle)
                Spacer()
                VStack(alignment: .leading){
                    NavigationLink(destination: GameModeView()) {
                        HStack{
                            Image(systemName: "square.grid.3x3.square")
                                .imageScale(.large)
                                .foregroundColor(.red)
                            Text("Play")
                        }
                    }
                    
                    NavigationLink(destination: StatsView()) {
                        HStack{
                            Image(systemName: "square.grid.3x3.square")
                                .imageScale(.large)
                                .foregroundColor(.red)
                            Text("Stats")
                        }
                    }
                }
                Spacer()
                Text("CFG iOS App Dev MOOC")
            }
            .padding()
        }
        

    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
