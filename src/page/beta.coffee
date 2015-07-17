
{renderString, tree, element, render} = require 'Deku'

require '../styles/main.css'

Beta = require '../component/beta'

#data = {}

render (tree (element Beta)), document.querySelector('#app')