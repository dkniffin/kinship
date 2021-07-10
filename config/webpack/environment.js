const { environment } = require('@rails/webpacker')

////////////////////////// sass/scss loader config //////////////////////////
const sassLoader = environment.loaders.get('sass')
const sassLoaderConfig = sassLoader.use.find(function (element) {
  return element.loader === 'sass-loader'
})

const options = sassLoaderConfig.options
options.implementation = require('sass') // Use Dart-implementation of Sass (default is node-sass)

const globCssImporter = require('node-sass-glob-importer')
options.sassOptions.importer = globCssImporter() // Add support for file globbing

// Resolve url() statements to relative paths
const cssLoaderIndex = sassLoader.use.findIndex((e) => e.loader === 'css-loader')
sassLoader.use.splice(cssLoaderIndex + 1, 0, {
  loader: "resolve-url-loader"
})

module.exports = environment
