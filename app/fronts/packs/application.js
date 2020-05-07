require("@rails/ujs").start()
require("@rails/activestorage").start()
require.context('../images', true)
//ログアウトできなくなるので注意
//= require jquery_ujs
// require("channels")
// require("bootstrap"); // bootstrap_custom.js を使います
global.$ = require('jquery')

//プラグイン
import "bootstrap"
import "@fortawesome/fontawesome-free/js/all"

//scss
import '../src/stylesheets/application'
//Javascript
import '../src/javascripts/application'
