_ = require 'lodash'

module.exports = do ->
  libs =
    base: 'bower_components'
    files:
      jquery: 'dist/jquery.js'
      lodash: 'dist/lodash.js'
      thenjs: 'then.js'
      angular: 'angular.js'
      'angular-bootstrap': 'ui-bootstrap.js'
      'angular-cookies': 'angular-cookies.js'
      'angular-resource': 'angular-resource.js'
      'angular-route': 'angular-route.js'
      'angular-sanitize': 'angular-sanitize.js'
      restangular: 'dist/restangular.js'
      bootstrap: [
        'dist/css/bootstrap.css'
        'dist/js/bootstrap.js'
        'dist/fonts/glyphicons-halflings-regular.eot'
        'dist/fonts/glyphicons-halflings-regular.svg'
        'dist/fonts/glyphicons-halflings-regular.ttf'
        'dist/fonts/glyphicons-halflings-regular.woff'
      ]
      'font-awesome': [
        'css/font-awesome.css'
        'fonts/fontawesome-webfont.eot'
        'fonts/fontawesome-webfont.svg'
        'fonts/fontawesome-webfont.ttf'
        'fonts/fontawesome-webfont.woff'
      ]
      'ubuntu-fontface': [
        'fonts/ubuntu-bold-webfont.woff'
        'fonts/ubuntu-bold-webfont.eot'
        'fonts/ubuntu-bold-webfont.ttf'
        'fonts/ubuntu-bold-webfont.svg'
        'fonts/ubuntu-bolditalic-webfont.woff'
        'fonts/ubuntu-bolditalic-webfont.eot'
        'fonts/ubuntu-bolditalic-webfont.ttf'
        'fonts/ubuntu-bolditalic-webfont.svg'
        'fonts/ubuntu-italic-webfont.woff'
        'fonts/ubuntu-italic-webfont.eot'
        'fonts/ubuntu-italic-webfont.ttf'
        'fonts/ubuntu-italic-webfont.svg'
        'fonts/ubuntu-light-webfont.woff'
        'fonts/ubuntu-light-webfont.eot'
        'fonts/ubuntu-light-webfont.ttf'
        'fonts/ubuntu-light-webfont.svg'
        'fonts/ubuntu-lightitalic-webfont.woff'
        'fonts/ubuntu-lightitalic-webfont.eot'
        'fonts/ubuntu-lightitalic-webfont.ttf'
        'fonts/ubuntu-lightitalic-webfont.svg'
        'fonts/ubuntu-medium-webfont.woff'
        'fonts/ubuntu-medium-webfont.eot'
        'fonts/ubuntu-medium-webfont.ttf'
        'fonts/ubuntu-medium-webfont.svg'
        'fonts/ubuntu-mediumitalic-webfont.woff'
        'fonts/ubuntu-mediumitalic-webfont.eot'
        'fonts/ubuntu-mediumitalic-webfont.ttf'
        'fonts/ubuntu-mediumitalic-webfont.svg'
        'fonts/ubuntu-regular-webfont.woff'
        'fonts/ubuntu-regular-webfont.eot'
        'fonts/ubuntu-regular-webfont.ttf'
        'fonts/ubuntu-regular-webfont.svg'
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