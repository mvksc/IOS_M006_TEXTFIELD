//
//  ContentView.swift
//  IOS_M006_TEXTFIELD
//
//  Created by MVK on 18/9/2563 BE.
//  Copyright © 2563 MVK. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var sUsername = ""//@State คือการระบุว่าตัวแปรรองรับการทำ twoway หรือค่าในตัวแปรเปลี่ยน TextField ก็เปลี่ยนด้วย
    @State var sPassword = ""
    var body: some View {
        VStack {
            TextField("Username", text: $sUsername)//binding ให้ใส่ $
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .padding(.top)
            
            SecureField("Password", text: self.$sPassword)//binding ให้ใส่ $
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding()
            
            Text("User : \(sUsername)")
            Text("Pass : \(self.sPassword)")
            Spacer()
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
