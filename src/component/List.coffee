
{render, element} = require('deku')

div = element.bind(element, 'div')

ListItem = require('./listitem')




module.exports =
  render: ({props, state}) ->
    div null,
      (element ListItem, text:item, index:i, click: props.click
      )  for item,i in props.items

