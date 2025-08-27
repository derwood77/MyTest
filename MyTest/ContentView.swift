//
//  ContentView.swift
//  MyTest
//
//  Created by me developer on 23/08/2025.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    
    @State private var audioPlayer: AVAudioPlayer!
    
    var body: some View {
        
        VStack {
            
            Image(systemName: "paperplane.fill")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, peter")
            
            Button("click me")
            {
                print("you clicked")
                let soundName = "sound4"
                guard let soundFile = NSDataAsset(name: soundName)else {
                    return print("file not found")
                }
                
                do {
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play()
                    
                } catch {
                    print(error.localizedDescription)
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .font(.largeTitle)
        .padding()
    }
}

#Preview {
    ContentView()
}
