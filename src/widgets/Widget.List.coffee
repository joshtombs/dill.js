class @Widget.List extends @Widget
  itemSelector: 'li'

  itemClass: World.Widget

  at: (index) ->
    @items().then (items) ->
      items[index]

  map: (iter) ->
    @items().then (items) -> $.map(items, iter)

  filter: (iter) ->
    @items().then (items) -> $.filter(items, iter)

  items: ->
    initialSel = if @customSelector then "#{@itemSelector} #{@customSelector}" else @itemSelector
    @findAll(initialSel).then (items) =>
      _.map items, (item, i) =>
        sel = if @customSelector then "#{@root} #{@itemSelector}:nth-child(#{i + 1}) #{@customSelector}" else
              "#{@root} #{@itemSelector}:nth-child(#{i + 1})"
        new @itemClass(root: sel)


