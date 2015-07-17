
{render, element} = require('deku')

div = element.bind(element, 'div')

module.exports =
  render: ({props, state}) ->
    div null, 'Test component B'

