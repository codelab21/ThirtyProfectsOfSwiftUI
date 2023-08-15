//
//  SideBar.swift
//  SwiftUICourse
//
//  MARK: codelab21 follow me on Instagram and YouTube

//

import SwiftUI

struct SideBar: View {
    @ObservedObject var viewModel = CourseViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.CourseTutorials, id: \.id) { CourseTutorial in
                NavigationLink {
                    CourseTutorial.destinationView
                } label: {
                    Text(CourseTutorial.name)
                }
            }
            .navigationTitle("30 Projects")
        }
    }
}

struct SideBar_Previews: PreviewProvider {
    static var previews: some View {
        SideBar()
    }
}
