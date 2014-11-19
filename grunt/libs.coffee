_ = require 'lodash'

module.exports = do ->
  libs =
    base: 'bower_components'
    files:
      lodash: 'dist/lodash.js'
      thenjs: 'then.js'
      angular: 'angular.js'
      'angular-bootstrap': 'ui-bootstrap.js'
      'angular-cookies': 'angular-cookies.js'
      'angular-resource': 'angular-resource.js'
      'angular-route': 'angular-route.js'
      'angular-sanitize': 'angular-sanitize.js'
      'danialfarid-angular-file-upload': [
        'dist/angular-file-upload.js'
        'dist/angular-file-upload-html5-shim.js'
      ]
      'supmice-ui': [
        'dist/css/*'
        'dist/fonts/*'
      ]

  getlibfiles = (libs) ->
    {base} = libs
    {files} = libs
    libsArr = []

    for libname, libfiles of files
      if _.isArray libfiles
        for libfile in libfiles
          libsArr.push "#{base}/#{libname}/#{libfile}"
      else if _.isString libfiles
        libsArr.push "#{base}/#{libname}/#{libfiles}"
      else return

    libsArr

  getlibfiles libs