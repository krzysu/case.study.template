class CaseStudy.AutoScroller
  @scrollTo: (el) ->
    destination = $(el).offset().top - 50
    $("html:not(:animated), body:not(:animated)").animate
      scrollTop:
        destination
      'normal'