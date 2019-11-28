//
//  ContentView.swift
//  EduServeCard
//
//  Created by Tim Newton on 11/26/19.
//  Copyright © 2019 EduServe, Inc. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let greenSea = UIColor(red:0.09, green:0.63, blue:0.52, alpha:1.0) // https://flatuicolors.com/palette/defo #16a085
    let oswaldBold40 = Font.custom("Oswald-Bold", size: 40.0)
    let pacificoReg = Font.custom("Pacifico-Regular", size: 40.0)
    var body: some View {
        ZStack {
            Color(greenSea)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("avatar_tim")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle()
                            .stroke(Color(.systemGray6), lineWidth: 5)
                )
                Text("Tim Newton")
                    .font(oswaldBold40)
                    .foregroundColor(Color(.systemGray6))
                    .multilineTextAlignment(.center)
                Text("EduServe, Inc.")
                    .font (.title)
                    .foregroundColor(Color(.systemGray6))
                    .bold()
                Text("President")
                    .font (.headline)
                    .foregroundColor(Color(.systemGray6))
                Text("Software Engineer")
                    .font (.subheadline)
                    .foregroundColor(Color(.systemGray6))
                Divider()
                InfoView(text: "425-314-4330", imageName: "phone.fill")
                InfoView(text: "tim.newton@eduserve.us", imageName: "phone.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
