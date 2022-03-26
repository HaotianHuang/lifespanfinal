//
//  ExerciseView.swift
//  Lifespan WatchKit Extension
//
//  Created by Haotian Huang on 26/3/22.
//

import SwiftUI

struct ExerciseView: View {
    
    @EnvironmentObject var model: LifespanModel
    @Binding var tabSelection: Int
    @State private var exerciseTime: Int = 0

    
    var body: some View {
        
        VStack {
            
            Picker("🏊🏻🏃‍♀️🚴🏿 /day", selection: $exerciseTime){
                ForEach(0...60, id: \.self) { i in
                    Text("\(i) minutes").tag(i)
                    
                }
            }.pickerStyle(WheelPickerStyle())
            
            Button{
                model.SetExercise(exercise: exerciseTime)
                self.tabSelection = 2
            } label:{
                Text("Confirm")
            }
        }
    }
}
