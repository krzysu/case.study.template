class CaseStudy.ContentSlider
  constructor: (@controlBox, @bodyBox) ->
    @$controls = $(@controlBox).find('a')
    @setDefaultSlide()
    @initControl()

  setDefaultSlide: ->
    @$controls.each (index, item) =>
      $item = $(item)
      if $item.hasClass('active')
        id = $item.attr('href')
        $(id).show()

  initControl: ->
    @$controls.on 'click', (e) =>
      e.preventDefault()
      @$controls.removeClass('active')
      id = $(e.target).addClass('active').attr('href')
      @showSlide(id)

  showSlide: (id) ->
    $(@bodyBox).find('article').hide()
    $(id).fadeIn()
