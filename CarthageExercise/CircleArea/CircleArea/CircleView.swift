//
//  ContentView.swift
//  CircleArea
//
//  Created by L Daniel De San Pedro on 05/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var diameter: CGFloat = 100
    @ObservedObject var viewModel: CircleViewModel
    var body: some View {
        VStack {
            Circle()
                .stroke(.blue,lineWidth: 10)
                .frame(width: diameter, height: diameter)
                .padding()
            Text("Area \(viewModel.resultArea)")
            Text("Diameter: \(diameter)")
            Slider(value: $diameter,
                   in: 100...300) { isEditing in
                if !isEditing {
                    viewModel.caculateArea(radius: diameter/2)
                }
            }
        }
        .padding()
        .onAppear(perform: {
            viewModel.caculateArea(radius: diameter/2)
        })
    }
}

#Preview {
    ContentView(viewModel: CircleViewModel())
}
