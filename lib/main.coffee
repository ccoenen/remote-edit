MainView = require './main-view'

module.exports =
  configDefaults:
    showHiddenFiles: false,
    savePasswordInClearText: true,
    numberOfConcurrentSshQueriesInOneConnection: 5,
    sshUseUserAgent: true,
    sshUsePrivateKey: false,
    sshPrivateKeyPath: "~/.ssh/id_rsa",
    sshPrivateKeyPassphrase: ""


  activate: (state) ->
    @view = new MainView(state.state)

  deactivate: ->
    @view?.destroy()

  serialise: ->
    viewState: @view.serialize()