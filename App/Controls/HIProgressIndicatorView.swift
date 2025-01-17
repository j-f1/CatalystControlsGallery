//
//  HIProgressIndicatorView.swift
//  HI Toolbox
//
//  Created by Steven Troughton-Smith on 17/08/2021.
//

import SwiftUI

struct HIProgressView: View, UIViewRepresentable {
	typealias UIViewType = UIProgressView
	let view = UIProgressView()
	var value = Float(0)
	
	func makeUIView(context: Context) -> UIViewType {
		return view
	}
	
	func updateUIView(_ uiView: UIViewType, context: Context) {
		view.progress = value
	}
}

struct HIActivityIndicatorView: View, UIViewRepresentable {
	typealias UIViewType = UIActivityIndicatorView
	let view = UIActivityIndicatorView()
	var active = false
	
	func makeUIView(context: Context) -> UIViewType {
		view.hidesWhenStopped = false
		return view
	}
	
	func updateUIView(_ uiView: UIViewType, context: Context) {
		if active == true {
			view.startAnimating()
		}
		else {
			view.stopAnimating()
		}
	}
}

struct HIProgressIndicatorView: View {
	@State var a = 0.0
	
	var body: some View {
		VStack(alignment:.leading) {
			Text("Progress Views")
				.bold()
			
			HIProgressView(value: 0.5)
			HIActivityIndicatorView()
			HIActivityIndicatorView(active: true)
		}
		.padding()
	}
}
