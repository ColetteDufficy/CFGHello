//
//  StatsView.swift
//  CFGHello
//
//  Created by colgate on 02/11/2023.
//

import SwiftUI

struct StatsView: View {
    
    @State var userProfile: UserProfile = UserProfile(username: "CFG", gamesAttempted: 0)
    
    var body: some View {
        VStack {
            
            Text("\(userProfile.username)'s Stats")
                .font(.title)
            
            Form {
                HStack{
                    Text("Username:")
                    TextField("username", text: $userProfile.username)
                        .onSubmit {
                            UserDefaults.standard.set(userProfile.username, forKey: "username")
                            UserDefaults.standard.set(userProfile.gamesAttempted, forKey: "gamesAttempted")
                        }
                }
                HStack{
                    Text("Games Attempted:")
                    Text("\(userProfile.gamesAttempted)")
                }
            }
        }.onAppear{
            if(UserDefaults.standard.object(forKey: "username") != nil){
                userProfile.username = UserDefaults.standard.string(forKey: "username")!
            }
            if(UserDefaults.standard.object(forKey: "gamesAttempted") != nil) {
                userProfile.gamesAttempted = UserDefaults.standard.integer(forKey: "gamesAttempted")
            }
        }
    }
}

struct StatsView_Previews: PreviewProvider{
    static var previews: some View {
        StatsView()
    }
}
