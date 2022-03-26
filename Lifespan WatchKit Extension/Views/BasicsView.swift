//
//  BasicsView.swift
//  Lifespan WatchKit Extension
//
//  Created by Haotian Huang on 26/3/22.
//

import SwiftUI

struct BasicsView: View {
    @EnvironmentObject var model: LifespanModel
    @Binding var tabSelection: Int
    @State private var sex = 1
    @State private var age = 25
    
    var body: some View {
        VStack{
            
            HStack{
                
                Picker("👱🏻‍♂️/👩🏻", selection: $sex){
                    Text("Male")
                        .tag(0)
                    Text("Female")
                        .tag(1)
                }
                
                VStack{
                    Text("👶👦👨👴")
                    Picker("", selection: $age) {
                        ForEach(1...100, id: \.self){ i in
                            Text("\(i) y/o").tag(i)
                        }
                    }
                }
               
            }
            
            
            
            Button{
            
                model.SetSex(sex: sex)
                model.SetAge(age: age)
                self.tabSelection = 0
                
            } label: {
                Text("Confirm")
            }
           
            
        }
    }
}

