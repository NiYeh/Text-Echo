include karax / prelude
import karax / vstyles
import karax / errors
import karax / kdom
from sugar import `=>`

var textValue:kstring

proc creatDom():VNode =
  result = buildHtml(tdiv):
    tdiv(class="wrapper"):
      header:
        text "文字回音"
        form(action=""):

          tdiv(class="row"):
            label(style="color:#660066".toCSS): text "輸入一段內容"
            textarea(id = "text1") 

          tdiv(class="row"):
            label(style="text-shadow: 1px 1px #ffff00, 2px 2px #2a2640;".toCSS): text "Echo Text"
            tdiv(class="echo")

          button(`type`="button", onclick = proc(): void =
            textValue = document.getElementById("text1").value
          ):
            text "Click Here"

          h2(style="text-shadow: 3px 3px #00ff00, 7px 7px #2a2640;".toCSS): text textValue


setRenderer creatDom
