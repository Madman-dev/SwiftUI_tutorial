//
//  ContentView.swift
//  landmark
//
//  Created by Jack Lee on 2023/12/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height:300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Airpods Pro 2")
                    .font(.title)
                    .foregroundStyle(Color.black)
                HStack {
                    Text("Designed By Apple")
//                        .font(.headline)
                    Spacer()    // 두 사이의 간격을 유지해주는 spacer - full width 활용
                    Text("manufactured in Vietnam")
//                        .font(.callout)
                }
                .font(.subheadline) // 생성 이후 교체할 수는 없구나
                .foregroundStyle(.secondary)
                
                Divider()
                
//                VStack(alignment: .leading) H로 바꾸면 바로 적용된다!
                Text(verbatim: "이건 뭐야") // Text안에 들어가는 parameter를 verbatim으로 부른다?
                    .font(.footnote)
//                    .font(.subheadline) 중복 불가
                    .fontWeight(.light)
                Text("new Text available")
                    .fontWeight(.bold)
            }
            .padding()
            Spacer()
        }  // 약간 safeAreaGuideline 느낌이네
    }
}

#Preview {
    ContentView()
}

// we create functions called modifiers
// everything that creates an object within a view - might as well be named OOO modifier.
