//
//  SleepView.swift
//  Lifespan WatchKit Extension
//
//  Created by Haotian Huang on 26/3/22.
//

import SwiftUI

struct SleepView: View {
    @EnvironmentObject var model: LifespanModel
    @Binding var tabSelection: Int
    @State private var sleepHours = 7

    var body: some View {
        VStack{
            Text("😴🛏️ /night")
            Picker("", selection: $sleepHours) {
                ForEach(0...12, id: \.self){ i in
                    Text("\(i) hrs").tag(i)
                }
            }
            
            Button{
                
                model.SetSleep(sleep: sleepHours)
                self.tabSelection = 5
            } label:{
                Text("Confirm")
            }
            
        }
    }

}


