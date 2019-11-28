//
//  InfoView.swift
//  EduServeCard
//
//  Created by Tim Newton on 11/26/19.
//  Copyright © 2019 EduServe, Inc. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .foregroundColor(Color(.systemGray5))
            .frame(height: 50)
            .overlay(
                HStack {
                    Image(systemName: imageName)
                        .foregroundColor(Color(.systemGreen))
                    Text(text)
                        .font (.body)
                        .foregroundColor(Color(.systemBlue))
                }
        )
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Some Title", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
