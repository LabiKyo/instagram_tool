```js
// Usage: save as a bookmark

// open the instagram modal photo in new tab

javascript:(function () {window.open($('#profile-media-modal .photo').get(0).src)})();

// open all photo in new tab

javascript:(function () {var html, reg, size; reg = /(.+)_6\.(.+)/; size = 320; html = "data:text/html,<style>img {width:" + size + "px;height:" + size + "px;}</style>"; $('#profile-photos .image').each(function(k, photo) { var result; result = reg.exec(photo.src); return html += "<img src='" + result[1] + "_7." + result[2] + "'>"; }); window.open(html);})();
```
