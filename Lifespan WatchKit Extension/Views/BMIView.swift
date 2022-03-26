//
//  BMIView.swift
//  Lifespan WatchKit Extension
//
//  Created by Haotian Huang on 26/3/22.
//

import SwiftUI

struct BMIView: View {
    
    @EnvironmentObject var model: LifespanModel
    @Binding var tabSelection: Int
    @State private var localWeight:Int = 60
    @State private var localHeight:Int = 169

    var body: some View {
        VStack{
            HStack{
                VStack{
                    // change to pounds lol
                    Picker("⚖️", selection: $localWeight){
                        ForEach(30...120, id: \.self){i in
                            Text("\(i) kg").tag(i)
                        }
                    }
                }
                
                VStack{
                    // change to pounds lol
                    Picker("📏", selection: $localHeight){
                        ForEach(100...200, id: \.self){i in
                            Text("\(i) cm").tag(i)
                        }
                    }
                }
            
            }
        
            Button{
                model.SetWeight(weight: localWeight)
                model.SetHeight(height: localHeight)
                self.tabSelection = 1

            } label: {
                Text("Confirm")
            }
        }
    }
}

