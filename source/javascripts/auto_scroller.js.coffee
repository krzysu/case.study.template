class CaseStudy.AutoScroller
  constructor: () ->

  scrollTo: (el) ->
    destination = $(el).offset().top - 100
    $("html:not(:animated), body:not(:animated)").animate
      scrollTop:
        destination
      'normal'