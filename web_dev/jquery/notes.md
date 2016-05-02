#Release 0: Make a Plan

  * JQuery Docs
  * Find Cheat Sheet
  * Installation / require paths
  * File links
  * Uses
  * Test jQuery methods after first break
  * Timing: Pomodoro (Chrome Extension)

#Relase 1: Study Up

##Things
  *What is JQuery
    * JS library, built-in functions
  * Docs, Resources, Cheat Sheets
    * https://api.jquery.com/
    * http://www.w3schools.com/jquery/default.asp
    * http://makeawebsitehub.com/jquery-mega-cheat-sheet/
  * Link in HTML file
    *  Local: <script src="jquery-1.12.0.min.js"></script>
    * Google CDN: <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    * MSFT CDN:  <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.0.min.js"></script>
  * Common Uses
    * Animate without the use of Flash
    * Change CSS (i.e. with events or resize)
  * Syntax
    * Basic syntax: $(selector).action()
  * Useful Methods
    * $(document).ready(function()) {jQuery methods}
      * Loads jQuery coeds after the page has loaded
      * Shorter method: $(function(){jQuery methods})
  * Selectors
    * elements: $("element")
    * #id: $("#id")
    * class: $(".class")
  * DOM Events (http://www.w3schools.com/jquery/jquery_events.asp)
    * Syntax
      * $("selector").event();
      * $("selector").event(function(){method});
    * Mouse
      * click
      * dblclick
      * mouseenter
      * mouseleave
    * Keyboard
      * keypress
      * keydown
      * keyup
    * Form
      * submit
      * change
      * focus
      * blur
    * Doc/Window
      * load
      * resize
      * scroll
      * unload