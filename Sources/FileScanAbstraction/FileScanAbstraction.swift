// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Combine

public enum FileScannerError: Error {
    case scanFailed(String)
    case fileEnumeratorFailed
    case directoryNotFound
    case fileAccessFailed
    case notImplemented
    
}

public protocol FileScannerProtocol {
//    func scanForMediaFiles(path: URL, extensions: [String]) async -> AnyPublisher<URL, FileScannerError>
    func scanForMediaFiles(path: URL, extensions: [String]) -> AsyncStream<Result<URL, FileScannerError>>
}
