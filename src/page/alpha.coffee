
{renderString, tree, element, render} = require 'Deku'

require '../styles/main.css'

Alpha = require '../component/alpha'

#data = {}

render (tree (element Alpha)), document.querySelector('#app')