//
//  TestClockView.swift
//  Lifespanner WatchKit Extension
//
//  Created by Haotian Huang on 26/3/22.
//

import SwiftUI

//struct Arc: Shape {
//  let startAngle: Angle
//  let endAngle: Angle
//  let clockwise: Bool
//    
//  func path(in rect: CGRect) -> Path {
//    var path = Path()
//    let radius = max(rect.size.width, rect.size.height) / 2
//    path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
//                radius: radius,
//                startAngle: startAngle,
//                endAngle: endAngle,
//                clockwise: clockwise)
//    return path
//  }
//}
struct TestClockView: View {
    
    private let gradient = AngularGradient(
        gradient: Gradient(colors: [Color.red, Color.yellow]),
        center: .center,
        startAngle: .degrees(360),
        endAngle: .degrees(0))
    
    
    let degrees = 360

    
    var body: some View {
        ZStack{
            
            
            Circle()
                .foregroundColor(.gray)
                .frame(width: 120, height: 120)
            
            Arc(startAngle: .degrees(100), endAngle: .degrees(0), clockwise: true)
              .stroke(gradient, lineWidth: 10)
              .frame(width: 110, height: 110)
              .rotationEffect(Angle(degrees: 270))

            
            Circle()
                .foregroundColor(.black)
                .frame(width: 100, height: 100)

//            VStack(spacing: 0){
//                Text(String(model.lifeExpectancy))
//                    .font(.system(size: 40, weight: .regular))
//
//
//                  Text("ESTIMATED LIFESPAN")
//                    .font(.system(size: 7, weight: .light))
//                      .fontWeight(.regular)
//
//            }
        }
    }
}

struct TestClockView_Previews: PreviewProvider {
    static var previews: some View {
        TestClockView()
    }
}
