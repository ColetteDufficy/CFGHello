//
//  SwiftUIView.swift
//  CFGHello
//
//  Created by colgate on 02/11/2023.
//

import SwiftUI

struct BoardView: View {
    var body: some View {
        VStack {
            
            ForEach(0..<Utils.maxCells) { row in
                
                HStack{
                    ForEach(0..<Utils.maxCells){ cell in
                        
                        if (cell.isMultiple(of: 2)) {
                            Image(systemName: "square.fill")
                                .foregroundColor(Utils.colourDarkCell)
                        }
                        else {
                            Image(systemName: "square.fill")
                                .foregroundColor(Utils.colourLightCell)
                        }
                    }
                }
            }
        }
    }
}

struct BoardView_Previews: PreviewProvider{
    static var previews: some View{
        BoardView()
    }
}
