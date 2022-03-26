//
//  DietView.swift
//  Lifespan WatchKit Extension
//
//  Created by Haotian Huang on 26/3/22.
//

import SwiftUI

struct DietView: View {

    @EnvironmentObject var model: LifespanModel
    @Binding var tabSelection: Int
    @State private var dietPercentile: Int = 50
    
    var body: some View {
        VStack{
            
            Picker("Diet %", selection: $dietPercentile){

                ForEach(0...100, id: \.self){ i in
                    Text(String(i)).tag(i)
                }
                
            }
            Button{
                
                model.SetDiet(diet: dietPercentile)
                self.tabSelection = 4
            } label:{
                Text("Confirm")
            }
        }
    }
}

