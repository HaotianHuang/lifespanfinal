//
//  CalculateView.swift
//  Lifespan WatchKit Extension
//
//  Created by Haotian Huang on 26/3/22.
//

import SwiftUI

struct CalculateView: View {
    @EnvironmentObject var model: LifespanModel
    @Binding var tabSelection: Int
    @State var lifeExpectancy: Double = 50
    

    var body: some View {

        Button{
            model.lifeExpectancy = model.CalculateLifeExpectancyV2()
            model.completedQuestions = true

        } label:{
            Text("Calculate")
        }
        
    }
}

