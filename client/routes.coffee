###
FlowRouter.route('/blog/:postId', {
    action: function(params, queryParams) {
        console.log("Yeah! We are on the post:", params.postId);
    }
});
###

FlowRouter.route '/',
  action: (params) ->
    BlazeLayout.render "layout", main: "main"
    
FlowRouter.route '/experiencia/:id',
  action: (params) ->
    BlazeLayout.render "layout", main: "experiencia"
    
    
FlowRouter.route '/nuevo_usuario',
  action: (params) ->
    BlazeLayout.render "layout", main: "nuevo_usuario"