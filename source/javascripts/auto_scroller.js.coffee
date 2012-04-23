class CaseStudy.AutoScroller
  @scrollTo: (el, afterCallback) ->
    destination = $(el).offset().top - 50

    $("html:not(:animated), body:not(:animated)").animate
      scrollTop: destination
    ,
      duration: 'normal'
      complete: ->
        if afterCallback? and typeof afterCallback == 'function'
          afterCallback()