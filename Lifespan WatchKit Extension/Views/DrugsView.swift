//
//  DrugsView.swift
//  Lifespan WatchKit Extension
//
//  Created by Haotian Huang on 26/3/22.
//

import SwiftUI

struct DrugsView: View {
    @EnvironmentObject var model: LifespanModel
    @Binding var tabSelection: Int
    @State private var localAlcohol: Int = 0
    @State private var localSmoke: Int = 0

    
    var body: some View {
        VStack{
            
            HStack{
                VStack{
                    
                    Picker("🚬 /day", selection: $localSmoke){

                        ForEach(0...30, id: \.self){ i in
                            Text(String(i)).tag(i)
                        }
                        
                    }
                }
                VStack{
                    Picker("🍺 /day", selection: $localAlcohol){
                        ForEach(0...20, id: \.self){ i in
                            Text(String(i)).tag(i)
                        }
                    }
                    
                    
                }
            }
            
            Button{
                
                model.SetAlcohol(alcohol: localAlcohol)
                model.SetSmoke(smoke: localSmoke)
                self.tabSelection = 3
                
            } label:{
                Text("Confirm")
            }
            
        }
        
    }
}

