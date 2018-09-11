// Generated by the protocol buffer compiler.  DO NOT EDIT!
// Source file foo.proto

import Foundation
import ProtocolBuffers


public class Baz { }

public func == (lhs: Baz.Foo, rhs: Baz.Foo) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasHello == rhs.hasHello) && (!lhs.hasHello || lhs.hello == rhs.hello)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension Baz {
  public struct FooRoot {
    public static var sharedInstance : FooRoot {
     struct Static {
         static let instance : FooRoot = FooRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final public class Foo : GeneratedMessage {
    public fileprivate(set) var hello:String = ""

    public fileprivate(set) var hasHello:Bool = false
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeTo(codedOutputStream:CodedOutputStream) throws {
      if hasHello {
        try codedOutputStream.writeString(fieldNumber:1, value:hello)
      }
      try unknownFields.writeTo(codedOutputStream:codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasHello {
        serialize_size += hello.computeStringSize(fieldNumber: 1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func getBuilder() -> Baz.Foo.Builder {
      return Baz.Foo.classBuilder() as! Baz.Foo.Builder
    }
    public func getBuilder() -> Baz.Foo.Builder {
      return classBuilder() as! Baz.Foo.Builder
    }
    public override class func classBuilder() -> ProtocolBuffersMessageBuilder {
      return Baz.Foo.Builder()
    }
    public override func classBuilder() -> ProtocolBuffersMessageBuilder {
      return Baz.Foo.Builder()
    }
    public func toBuilder() throws -> Baz.Foo.Builder {
      return try Baz.Foo.builderWithPrototype(prototype: self)
    }
    public class func builderWithPrototype(prototype:Baz.Foo) throws -> Baz.Foo.Builder {
      return try Baz.Foo.Builder().mergeFrom(other: prototype)
    }
    override public func getDescription(indent:String) throws -> String {
      var output:String = ""
      if hasHello {
        output += "\(indent) hello: \(hello) \n"
      }
      output += unknownFields.getDescription(indent: indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasHello {
               hashCode = (hashCode &* 31) &+ hello.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Baz.Foo"
    }
    override public func className() -> String {
        return "Baz.Foo"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:Baz.Foo = Baz.Foo()
      public func getMessage() -> Baz.Foo {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasHello:Bool {
           get {
                return builderResult.hasHello
           }
      }
      public var hello:String {
           get {
                return builderResult.hello
           }
           set (value) {
               builderResult.hasHello = true
               builderResult.hello = value
           }
      }
      public func setHello(_ value:String) -> Baz.Foo.Builder {
        self.hello = value
        return self
      }
      public func clearHello() -> Baz.Foo.Builder{
           builderResult.hasHello = false
           builderResult.hello = ""
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      public override func clear() -> Baz.Foo.Builder {
        builderResult = Baz.Foo()
        return self
      }
      public override func clone() throws -> Baz.Foo.Builder {
        return try Baz.Foo.builderWithPrototype(prototype: builderResult)
      }
      public override func build() throws -> Baz.Foo {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> Baz.Foo {
        let returnMe:Baz.Foo = builderResult
        return returnMe
      }
      public func mergeFrom(other:Baz.Foo) throws -> Baz.Foo.Builder {
        if other == Baz.Foo() {
         return self
        }
        if other.hasHello {
             hello = other.hello
        }
        _ = try merge(unknownField: other.unknownFields)
        return self
      }
      public override func mergeFrom(codedInputStream:CodedInputStream) throws -> Baz.Foo.Builder {
           return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
      }
      public override func mergeFrom(codedInputStream:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Baz.Foo.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom: self.unknownFields)
        while (true) {
          let protobufTag = try codedInputStream.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 10:
            hello = try codedInputStream.readString()

          default:
            if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
    }

  }

}
extension Baz.Foo: GeneratedMessageProtocol {
  public class func parseArrayDelimitedFrom(inputStream:InputStream) throws -> Array<Baz.Foo> {
    var mergedArray = Array<Baz.Foo>()
    while let value = try parseDelimitedFrom(inputStream: inputStream) {
      mergedArray += [value]
    }
    return mergedArray
  }
  public class func parseDelimitedFrom(inputStream:InputStream) throws -> Baz.Foo? {
    return try Baz.Foo.Builder().mergeDelimitedFrom(inputStream:inputStream)?.build()
  }
  public class func parseFrom(data:Data) throws -> Baz.Foo {
    return try Baz.Foo.Builder().mergeFrom(data: data, extensionRegistry:Baz.FooRoot.sharedInstance.extensionRegistry).build()
  }
  public class func parseFrom(data:Data, extensionRegistry:ExtensionRegistry) throws -> Baz.Foo {
    return try Baz.Foo.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(inputStream:InputStream) throws -> Baz.Foo {
    return try Baz.Foo.Builder().mergeFrom(inputStream: inputStream).build()
  }
  public class func parseFrom(inputStream:InputStream, extensionRegistry:ExtensionRegistry) throws -> Baz.Foo {
    return try Baz.Foo.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(codedInputStream:CodedInputStream) throws -> Baz.Foo {
    return try Baz.Foo.Builder().mergeFrom(codedInputStream: codedInputStream).build()
  }
  public class func parseFrom(codedInputStream:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Baz.Foo {
    return try Baz.Foo.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
  }
}

// @@protoc_insertion_point(global_scope)
