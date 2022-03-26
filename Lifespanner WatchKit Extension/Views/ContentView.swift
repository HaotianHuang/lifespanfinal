//
//  ContentView.swift
//  Lifespan WatchKit Extension
//
//  Created by Haotian Huang on 26/3/22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: LifespanModel

    
    var body: some View {
        VStack{
            Text("Lifespan")
                .font(.title)
                .fontWeight(.thin)
                .multilineTextAlignment(.trailing)
            Text("Predict your life expectancy.")
                .fontWeight(.thin)
                .multilineTextAlignment(.trailing)
            
            Spacer()
                        
                NavigationLink(destination: InputView().environmentObject(LifespanModel())){
                    Text("Start")
                }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
