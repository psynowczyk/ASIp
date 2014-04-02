jQuery ->
  if $('#infinite-scrolling').size() > 0
    $(window).on 'scroll', ->
      more_posts_url = $('.pagination .next_page').attr('href')
      if more_posts_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
        $('.pagination').html('<img src="images/ajax-loader.gif" alt="Wczytywanie..." title="Wczytywanie..." />')
        $.getScript more_posts_url
      return
    return