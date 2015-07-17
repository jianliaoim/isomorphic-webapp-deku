
{render, element} = require('deku')

ele = (tag) ->
  return element.bind element, tag

div = ele('div')
input = ele('input')

onKeyUp = (event, component) ->
  component.props.handleChange event.target.value

module.exports =

  render: ({props, state}, setState) ->
    input value: props.val, onKeyUp: onKeyUp



