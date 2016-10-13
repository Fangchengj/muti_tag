jQuery ->
  $('#article_tag_two_id').parent().hide()
  tag_twos = $('#article_tag_two_id').html()
  console.log(tag_twos)
  $('#article_tag_one_id').change ->
    tag_one = $('#article_tag_one_id :selected').text()
    console.log(tag_one)
    options = $(tag_twos).filter("optgroup[label=#{tag_one}]").html()
    console.log(options)
    if options
      $('#article_tag_two_id').html(options)
      $('#article_tag_two_id').parent().show()
    else
      $('#article_tag_two_id').empty()
      $('#article_tag_two_id').parent().hide()
