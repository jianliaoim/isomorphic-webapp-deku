
{render, element} = require 'deku'

ele = (tag) ->
  return element.bind element, tag

Input = ele require './input'
List =  ele require './list'
div = ele 'div'
button = ele 'button'

handleClick = (e, component, updateState)->
  {state} = component
  updateState list: (state.list.concat state.val)

handleChange = (text, component, updateState) ->
  #TODO CHANGE
  updateState {val: text}
  console.log component


handleDelete = (i) ->
  #TODO DELETE
  #u {list: c.state.list.splice(i,1)}

module.exports =
  initialState: (props)->
    return val: 'testtest', list: []

  render: (component, setState) ->
    {props, state} = component

    return div {class:'test'},
      List items: state.list, click: handleDelete
      div class:'control',
        Input val: state.val, handleChange: (text) =>
          handleChange text, component, setState
        button onClick: handleClick, 'Add'

