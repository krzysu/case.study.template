class CaseStudy.ContentSlider
  constructor: (@controlBox, @bodyBox) ->
    @$controls = $(@controlBox).find('a')
    @setDefaultSlide()
    @initControl()

  setDefaultSlide: ->
    @hideAll()
    @$controls.each (index, item) =>
      $item = $(item)
      if $item.hasClass('active')
        id = $item.attr('href')
        $(id).show()

  initControl: ->
    @$controls.on 'click', @onClickHandler
    $(@bodyBox).find('.button').on 'click', @onClickHandler

  onClickHandler: (e) =>
    e.preventDefault()
    id = $(e.target).attr('href')

    CaseStudy.AutoScroller.scrollTo @controlBox, => @showSlide(id)

  setActiveControl: (id) ->
    @$controls.removeClass('active')
    @$controls.each (index, item) -> 
      $item = $(item)
      if $item.attr('href') == id
        $item.addClass('active')

  showSlide: (id) ->
    @setActiveControl(id)
    @hideAll()
    $(id).fadeIn()

  hideAll: ->
    $(@bodyBox).find('article').hide()