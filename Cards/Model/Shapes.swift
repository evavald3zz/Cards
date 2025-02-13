//
//  Shapes.swift
//  Cards
//
//  Created by M1_Tugo on 2/13/25.
//

import SwiftUI

struct Shapes_Previews: PreviewProvider {
    
    static let currentShape = Cone()
        .aspectRatio(1, contentMode: .fit)
        .background(Color.yellow)
        .previewLayout(.sizeThatFits)
}

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        let width = rect.width
        let height = rect.height
        var path = Path()
        path.addLines([
            CGPoint(x: width * 0.13, y: height * 0.2),
            CGPoint(x: width * 0.87, y: height * 0.47),
            CGPoint(x: width * 0.4, y: height * 0.93)
        ])
        path.closeSubpath()
        return path
        path.move(to: CGPoint(x: 20, y: 30))
        path.addLine(to: CGPoint(x: 130, y: 70))
        path.addLine(to: CGPoint(x: 60, y: 140))
        path.closeSubpath()
        return path
    }
    struct Cone: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            let radius = min(rect.midX, rect.midY)
            let radius = min(rect.midX, rect.midY)
            path.addArc(
             center: CGPoint(x: rect.midX, y: rect.midY),
             radius: radius,
             startAngle: Angle(degrees: 0),
             endAngle: Angle(degrees: 180),
             clockwise: true)
             return path
        }
    }
}
