# Iron.Location.configure useHashPaths: on

Router.configure
  layoutTemplate: 'ApplicationLayout'

Router.route '/', -> @render 'home'

Router.route 'pdf',
  path: 'pdf'
  where: 'server'
  action: ->
    url = '/'
    r = wkhtmltopdf url, pageSize: 'A4'
      .pipe @response
