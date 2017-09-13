import jester, asyncdispatch, htmlgen


settings:
  staticDir = "semantic"


routes:
  get "/":
    resp html(
      head(
        script(type="text/javascript", src="https://unpkg.com/vue"),
      ),
      body(
        h1("Hello world"),
        `div`(id="app", "{{ message }}"),
      ),
      script(type="text/javascript", src="/javascripts/app.js"),
    )
  get "/javascripts/app.js":
    resp """
      var app = new Vue({
        el: '#app',
        data: {
          message: 'Hello Vue!'
        }
      })
    """


runForever()
