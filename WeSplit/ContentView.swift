//
//  ContentView.swift
//  WeSplit
//
//  Created by Shrey Kakkar on 2/26/21.
//

import SwiftUI

//Views are a function of their state!
struct ContentView: View {
    /// State: PropertyWrapper to store properties changed by SwiftUI (make these private!)
    @State private var number: Int = 0

    /// some: same kind of view has to be returned here, cant change type of view returned
    var body: some View {
        Button("My Button: \(number)") {
            print("YAY")
            number += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
