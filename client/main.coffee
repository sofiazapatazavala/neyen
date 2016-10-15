respuesta = new ReactiveVar();
respuesta.set("ingresa una pregunta para comenzar")

Template.main.helpers
  respuesta: () ->
    respuesta.get();

Template.main.events
  "keypress #watson": (event, template) ->
    if event.which is 13
      pregunta = $(event.target).val();
      $(event.target).val("");
      HTTP.get "http://neyen-api.mybluemix.net/conversacion?mensaje=#{pregunta}",{}, (err,cb)->
        console.log resp = JSON.parse(cb.content)
        respuesta.set(resp.output.text)