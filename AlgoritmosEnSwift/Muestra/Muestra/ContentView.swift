//
//  ContentView.swift
//  Muestra
//
//  Created by Jesus Rodriguez on 06.12.20.
//

import SwiftUI

/// StackView
 //   -- Text
 //   -- Text
   // HStack (Horizontal)
   // Button - Button


struct ContentView: View {
    var body: some View {
        VStack {
            VStack {
                Text("Hello, world").font(.largeTitle)
                Text("Subtitulo").font(.body)
            }
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Boton rojo").foregroundColor(.red)
                })
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Boton azul").foregroundColor(.blue)
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
