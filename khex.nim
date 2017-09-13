import jester, asyncdispatch, htmlgen


settings:
  staticDir = "public"


routes:
  get "/":
    resp html(
      head(
        link(rel="stylesheet", type="text/css", class="ui", href="/semantic/semantic.css"),
        script(type="text/javascript", src="https://code.jquery.com/jquery-3.2.1.js"),
        script(type="text/javascript", src="/semantic/semantic.js"),
      ),
      body(
        h1("Hello world"),
        `div`(id="app", "haha"),
      ),
      script(type="text/javascript", src="/javascripts/app.js"),
    )
  get "/javascripts/app.js":
    resp """
      $(function() {
        $('#app').html('hello')
      })
    """


runForever()
