$ ->
  new CaseStudyController()

class CaseStudyController
  constructor: ->
    @autoScroller =  new CaseStudy.AutoScroller()
    @initInternalLinks()

  initInternalLinks: ->
    $('a.internal').on 'click', (e) =>
      e.preventDefault()
      destinationId = $(e.target).attr('href')
      @autoScroller.scrollTo(destinationId)
