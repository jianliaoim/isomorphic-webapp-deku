
{render, element} = require('deku')

div = element.bind element, 'div'
button = element.bind element, 'button'
span = element.bind element, 'span'

handleClick = (e)->

  console.log('clicked')
  c.props.click?(c.props.index)

module.exports =
  render: ({props, state}) ->
    div class:'item', span null, props.text, button class:'delete',onClick: handleClick , '-'

