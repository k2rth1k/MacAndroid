//
//  ContentView.swift
//  MacAndroid
//
//  Created by Nelapati Karthik CHOWDARY on 04/12/20.
//

import SwiftUI

struct ContentView: View {
    @State private var showDetails = false
    var body: some View {
        VStack {
            Button(action: {
                            self.showDetails.toggle()
                        }) {
                            Text("Show details")
                        }
                        if showDetails {
                            Text("You should follow me on Twitter: @twostraws")
                                                .font(.largeTitle)
                        }
            Text("Hello, World!")
                .padding(.top)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func connect(start: Bool) -> Void{
    let task = Process()
        task.launchPath = "/usr/bin/ssh"
        task.arguments = ["USERNAME@IPADDRESS", "-t", "sudo systemctl stop mediacenter; /opt/vc/bin/tvservice -o"]
        task.launch()
}
