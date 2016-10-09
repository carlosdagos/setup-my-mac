command: "echo $(/usr/local/bin/kwmc query space active tag)"

refreshFrequency: 1000 # ms

render: (output) ->
  """
  <div class="foc">
    <span></span>
    <span class="icon"></span>
  </div>
  """

update: (output, el) ->
    focused = if output.length <= 80
                output
              else
                "#{output.substring(0,79)}..."

    $(".foc span:first-child", el).text("  #{focused}")
    $icon = $(".foc span.icon", el)
    $icon.removeClass().addClass("icon")
    $icon.addClass("fa fa-bars")

style: """
  -webkit-font-smoothing: antialiased
  color: #DDD
  font: 12px "Fira Code"
  height: 16px
  left: 10px
  overflow: hidden
  text-overflow: ellipsis
  top: 6px
  width: auto
"""