//
//  ContentView.swift
//  MySecondApp
//
//  Created by Kavin Gregary Anand on 27/09/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(.systemMint)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20.0){
                Image("martinO")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                
                HStack{
                    
                    Text("Mr. Ødda")
                        .font(.title)
                        .fontWeight(.bold)
                    Image(systemName: "soccerball")
                    Spacer()
                    
                    VStack{
                        HStack{
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                        }
                        
                        Text("5 stars!")
                    }
                    .foregroundColor(.orange)
                    
                }
                
                Text("\"I want to do everything perfectly. I want to be the best, all the time\"")
            }
            .padding()
            .background(Rectangle().foregroundStyle(.white)
                .cornerRadius(15)
                .shadow(radius: 15))
            .padding()
            
            
            
        }
        }
        
        
        
    
}

#Preview {
    ContentView()
}
