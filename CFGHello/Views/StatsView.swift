//
//  StatsView.swift
//  CFGHello
//
//  Created by colgate on 02/11/2023.
//

import SwiftUI

struct StatsView: View {
    
    var userProfile: UserProfile = UserProfile(username: "CFG", gamesAttempted: 0)
    
    var body: some View {
        VStack {
            
            Text("\(userProfile.username)'s Stats")
                .font(.title)
            
            VStack {
                Text("Text:\t\(userProfile.username)")
                Text("Games:\t\(userProfile.gamesAttempted)")
            }
        }
    }
}

struct StatsView_Previews: PreviewProvider{
    static var previews: some View {
        StatsView()
    }
}
