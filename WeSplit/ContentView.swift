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
    @State var userInput: String = ""

    /// some: same kind of view has to be returned here, cant change type of view returned
    var body: some View {
        Form {
            ///$: two way binding. @State allows to modify a property, $ allows for UI to write to property
            TextField("Enter name:", text: $userInput)
            Text("Input: \(userInput)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
