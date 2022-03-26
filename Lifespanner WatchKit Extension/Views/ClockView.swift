//
//  ClockView.swift
//  Lifespan WatchKit Extension
//
//  Created by Haotian Huang on 26/3/22.
//

import SwiftUI

struct Arc: Shape {
  let startAngle: Angle
  let endAngle: Angle
  let clockwise: Bool
    
  func path(in rect: CGRect) -> Path {
    var path = Path()
    let radius = max(rect.size.width, rect.size.height) / 2
    path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                radius: radius,
                startAngle: startAngle,
                endAngle: endAngle,
                clockwise: clockwise)
    return path
  }
}
struct ClockView: View {
    
    @EnvironmentObject var model: LifespanModel
    // if you want 30 degrees do endAngle = 30. 360 is full circle.
    //let endAngle: CGFloat = 30
    let estimatedLifespan: Int = 67
    
    private let gradient = AngularGradient(
        gradient: Gradient(colors: [Color.red, Color.yellow]),
        center: .center,
        startAngle: .degrees(360),
        endAngle: .degrees(0))
    
    let degrees = 360
    
    var body: some View {
        VStack{
            HStack{
                
                Spacer()
                
                Text("LIVE")
                    .fontWeight(.light)
                    .foregroundColor(.red)
                
                Spacer()
                
                Text("Age: " + String(model.age))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
              
            }
            ZStack{
                
                
                Circle()
                    .foregroundColor(.gray)
                    .frame(width: 140, height: 140)
                
                Arc(startAngle: .degrees(model.endAngle), endAngle: .degrees(0), clockwise: true)
                  .stroke(gradient, lineWidth: 10)
                  .frame(width: 130, height: 130)
                  .rotationEffect(Angle(degrees: 270))

                
                Circle()
                    .foregroundColor(.black)
                    .frame(width: 120, height: 120)

                VStack(spacing: 0){
                    Text(String(model.lifeExpectancy))
                        .font(.system(size: 48, weight: .regular))

                    
                      Text("ESTIMATED LIFESPAN")
                        .font(.system(size: 8, weight: .light))
                          .fontWeight(.regular)
               
                }
            }
            
            
        }
    }
}
