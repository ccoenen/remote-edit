Serializable = require 'serializable'

module.exports =
  class Host
    Serializable.includeInto(@)

    constructor: (@hostname, @directory, @username, @port) ->

    getConnectionString: ->
      throw new Error("Function getConnectionString() needs to be implemented by subclasses!")

    connect: (callback) ->
      throw new Error("Function connect(callback) needs to be implemented by subclasses!")

    getFilesMetadata: (path, callback) ->
      throw new Error("Function getFiles(Callback) needs to be implemented by subclasses!")

    getFileData: (file, callback) ->
      throw new Error("see subclass")

    serializeParams: ->
      throw new Error("Must be implemented in subclass!")