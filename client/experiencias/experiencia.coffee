productos = new ReactiveVar()

Template.experiencia.onRendered ->
  HTTP.get "https://api.mercadolibre.com/sites/MLC/search?q=tubo de ensayo",{}, (err,cb)->
    resp = JSON.parse(cb.content)
    productos.set(resp.results)
    console.log productos.get()

Template.experiencia.helpers
  productos: ->
    console.log("hola")
    productos.get()