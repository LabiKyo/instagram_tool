# open all photo in new tab
reg = /(.+)_6\.(.+)/
size = 320 # set picture size here
html = "data:text/html,<style>img {width:#{size}px;height:#{size}px;}</style>"
$('#profile-photos .image').each(
  (k, photo) ->
    result = reg.exec photo.src
    html += "<img src='#{result[1]}_7.#{result[2]}'>"
)
window.open html
