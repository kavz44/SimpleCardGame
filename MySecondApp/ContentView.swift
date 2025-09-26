//
//  ContentView.swift
//  MySecondApp
//
//  Created by Kavin Gregary Anand on 27/09/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            // Bakgrunn
            Image("background-plain")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                Spacer()
                
                // War Logo
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
                Spacer()
                
                // Kortene
                HStack(spacing: 30) {
                    Image("card2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 180)
                    
                    Image("card10")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 180)
                }
                
                Spacer()
                
                // Deal knappen
                Image("button")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 60)
                
                //Spacer()
                
                // Scoreboarden
                HStack(spacing: 50) {
                    VStack {
                        Text("Player")
                            .font(.headline)
                        Text("0")
                            .font(.largeTitle)
                            .bold()
                    }
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                        Text("0")
                            .font(.largeTitle)
                            .bold()
                    }
                }
                .foregroundColor(.white)
                
                Spacer()
            }
            .padding(.horizontal, 30)
        }

        
        
        
    }
}
#Preview {
    ContentView()
}
