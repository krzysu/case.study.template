class CaseStudy.AutoScroller
  @scrollTo: (el, afterCallback) ->
    destination = $(el).offset().top - 50

    $("body:not(:animated)").animate
      scrollTop: destination
      'normal'
      ->
        if afterCallback? and typeof afterCallback == 'function'
          afterCallback()