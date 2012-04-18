$ ->
  new CaseStudyController()

class CaseStudyController
  constructor: ->
    @initInternalLinks()

    @sliderHighlights = new CaseStudy.ContentSlider('#highlights-slider-control', '#highlights-slider-body')
    @sliderPrototyping = new CaseStudy.ContentSlider('#prototyping-slider-control', '#prototyping-slider-body')

  initInternalLinks: ->
    $('a.internal').on 'click', (e) =>
      e.preventDefault()
      destinationId = $(e.target).attr('href')
      CaseStudy.AutoScroller.scrollTo(destinationId)
