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
    let people = ["Shrey", "James", "Sunil", "Pravin", "Navneet"]

    /// some: same kind of view has to be returned here, cant change type of view returned
    var body: some View {
        VStack {
            Picker("Select something: ", selection: $number) {
                ForEach(0 ..< 5) {
                    Text("You selected: \($0)")
                }

            }

            Text("Input: \(people[number])")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
