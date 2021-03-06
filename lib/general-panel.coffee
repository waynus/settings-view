{View} = require 'atom-space-pen-views'
SettingsPanel = require './settings-panel'

module.exports =
class GeneralPanel extends View
  @content: ->
    @div =>
      @form class: 'general-panel section', =>
        @div outlet: "loadingElement", class: 'alert alert-info loading-area icon icon-hourglass', "Loading settings"

  initialize: ->
    @loadingElement.remove()

    @append(new SettingsPanel('core'))
    @append(new SettingsPanel('editor'))
