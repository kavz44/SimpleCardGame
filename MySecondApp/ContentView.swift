//
//  ContentView.swift
//  MySecondApp
//
//  Created by Kavin Gregary Anand on 27/09/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard:String = "back"
    @State var cpuCard:String = "back"
    
    @State var playerScore:Int = 0
    @State var cpuScore:Int = 0
    
    @State var winnerMsg:String = ""
    @State var showRestart:Bool = false
    
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
                    Image(playerCard)
                    Image(cpuCard)
                }
                
                
                Spacer()
                    
                
                ZStack {
                    // Deal knappen
                    Button{
                        deal()
                    }
                     label: {
                        Image("button")
                    }
                    .frame(alignment: .center)
                    
                    if showRestart {
                        HStack {
                            Spacer()
                            Button(action: {
                                restartGame()
                                print("Restart pressed")
                            }) {
                                Image(systemName: "arrow.clockwise")
                            }
                        }
                        .padding(.horizontal)
                        .foregroundStyle(.white)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)

                    
                
                
                    
                
                //Spacer()
                
                // Scoreboarden
                HStack(spacing: 100) {
                    VStack {
                        Text("Player")
                            .font(.headline)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .bold()
                    }
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .bold()
                    }
                }
                .foregroundColor(.white)
                
                Spacer()
                
            }
            .padding(.horizontal, 30)
            
            // Plasseres i ZSTack med fast posisjon for å ikke endre plassering på resten av elementene på skjermen
            Text(winnerMsg)
                .foregroundColor(.white)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
                .position(x: UIScreen.main.bounds.width / 2,
                          y: 575)
                
        }
        

        
        
        
    }
    
    // deal funksjonalitet
    func deal() {
        
        // / tilfeldig kort til spilleren og cpu (egt er begge cpu )
        let randomPlayerValue: Int = Int.random(in:2...14)
        let randomCpuValue: Int = Int.random(in:2...14)
    
        playerCard = "card" + String(randomPlayerValue)
        cpuCard = "card" + String(randomCpuValue)
        
        // Gjør restartknappen synlig hvis ikke synlig
        showRestart = true
        
        // Oppdater scoren
        if (randomPlayerValue > randomCpuValue) {
            playerScore += 1
            winnerMsg = "Player won!"
        }
        else if (randomCpuValue > randomPlayerValue) {
            cpuScore += 1
            winnerMsg = "CPU won!"
        }
        else {
            playerScore += 1
            cpuScore += 1
            winnerMsg = "Draw! Both gets points:)"
        }
        
        
    }
    
    // Restart spillet funksjonalitet
    func restartGame() {
        // Setter bare verdiene til startverdien
        playerCard = "back"
        cpuCard = "back"
        
        playerScore = 0
        cpuScore = 0
        
        winnerMsg = ""
        showRestart = false
        
    }
}


#Preview {
    ContentView()
}
