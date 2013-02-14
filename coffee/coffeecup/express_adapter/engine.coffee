# @name engine 
# @author dmoore@suspectedterrorist.org
# @purpose express.js 3.x + coffeecup doesn't handle layouts anymore, let's renable it.

cc = require('coffeecup').__express

layout = ''

# since coffeecup doesn't handle layout render, let's
# subvert it's __express adapter by wrapping it with 
# an anonymous function that treats each real page 
# as a module, and then evaluate layout page 
engine = (path, settings, callback) ->
  # delete the view (it's exposed as a module)
  delete require.cache[require.resolve(path)]

  # pull in the body of the template via a module 
  settings.hardcode ?= {}
  settings.hardcode.content ?= require path

  # compile layout first and insert the requested path
  cc layout, settings, callback

module.exports = (layout_path) ->
  layout = layout_path 
  return engine: engine 
