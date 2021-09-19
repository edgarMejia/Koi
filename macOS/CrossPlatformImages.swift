//
//  CrossPlatformImages.swift
//  Koi (macOS)
//
//  Created by Edgar Mejía on 18/9/21.
//

// Either put this in a separate file that you only include in your macOS target
// or wrap the code in #if os(macOS) / #endif
import Cocoa

// Step 1: Typealias UIImage to NSImage
typealias UIImage = NSImage

// Step 2: You might want to add these APIs that UIImage has but NSImage doesn't.
extension NSImage {
    var cgImage: CGImage? {
        var proposedRect = CGRect(origin: .zero, size: size)

        return cgImage(forProposedRect: &proposedRect,
                       context: nil,
                       hints: nil)
    }

    convenience init?(named name: String) {
        self.init(named: Name(name))
    }
}
