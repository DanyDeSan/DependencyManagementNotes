//
//  ContentView.swift
//  TriangleArea
//
//  Created by L Daniel De San Pedro on 09/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel: TriangleViewModel
    
    @State var width: CGFloat = 100
    @State var height: CGFloat = 100
    
    var body: some View {
        VStack {
            Triangle()
                .stroke(.blue, lineWidth: 10)
                .frame(width: width, height: height)
                .padding()
            Text("Area: \(String(format: "%.2f", viewModel.triangleArea))")
                .font(.headline)
            VStack(alignment: .leading, content: {
                Text("Height: \(String(format: "%.2f", height))")
                    .font(.subheadline)
                Slider(value: $height,
                       in: 100...300) { endedEditing in
                    if endedEditing {
                        viewModel.calculateTriangleArea(widht: width, height: height)
                    }
                }
                Text("Width: \(String(format: "%.2f", width))")
                    .font(.subheadline)
                Slider(value: $width,
                       in: 100...300) { endedEditing in
                    if endedEditing {
                        viewModel.calculateTriangleArea(widht: width, height: height)
                    }
                }
            })
            .padding()
        }
        .padding()
        .onAppear(perform: {
            viewModel.calculateTriangleArea(widht: width, height: height)
        })
    }
}

#Preview {
    ContentView(viewModel: TriangleViewModel())
}
