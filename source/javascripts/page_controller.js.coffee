$ ->
  new CaseStudyController()

class CaseStudyController
  constructor: ->
    @autoScroller =  new CaseStudy.AutoScroller()
    @initInternalLinks()

    @slider = new CaseStudy.ContentSlider('#highlights-slider-control', '#highlights-slider-body')

  initInternalLinks: ->
    $('a.internal').on 'click', (e) =>
      e.preventDefault()
      destinationId = $(e.target).attr('href')
      @autoScroller.scrollTo(destinationId)
