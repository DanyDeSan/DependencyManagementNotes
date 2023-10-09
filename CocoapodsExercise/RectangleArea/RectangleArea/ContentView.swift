//
//  ContentView.swift
//  RectangleArea
//
//  Created by L Daniel De San Pedro on 09/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: RectangleViewModel
    
    @State var height: CGFloat = 100
    @State var width: CGFloat = 150
    
    var body: some View {
        VStack {
            Rectangle()
                .stroke(.blue, lineWidth: 10)
                .frame(width: width, height: height)
                .padding()
            Text("Area: \(String(format: "%.2f", viewModel.rectangleArea))")
            VStack(alignment: .leading, content: {
                Text("Height: \(String(format: "%.2f", height))")
                Slider(
                    value: $height, in: 100...400) { finishedEditing in
                        if finishedEditing {
                            viewModel.calculateRectangleArea(width: width, height: height)
                        }
                    }
                Text("Width: \(String(format: "%.2f", width))")
                Slider(value: $width, in: 150...350) { finishedEditing in
                    if finishedEditing {
                        viewModel.calculateRectangleArea(width: width, height: height)
                    }
                }
            })
            .padding()
        }
        .padding()
        .onAppear(perform: {
            viewModel.calculateRectangleArea(width: width, height: height)
        })
    }
}

#Preview {
    ContentView(viewModel: RectangleViewModel())
}
