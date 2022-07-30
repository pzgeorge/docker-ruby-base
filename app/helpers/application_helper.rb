module ApplicationHelper

  # Loads react applet from javascripts/components/applets.js
  def react_applet(applet, classList: "", styles: "", id: "", data: {})
    classList = ("react-applet-" + applet + " " + classList)
    applet_id = generate_applet_id

    html = "<noscript>You need to enable JavaScript to run this app.</noscript>"
    html += "<div id=\"#{id}\" class=\"#{classList}\" style=\"#{styles}\" data-applet-id=\"#{applet_id}\"></div>"
    html += "<script type=\"application/json\" id=\"react-applet-data-for-#{applet_id}\">#{data.to_json.html_safe}</script>"

    html.html_safe
  end

  # Provides react applet with a generated id
  def generate_applet_id
    charset = Array("A".."Z") + Array("a".."z") + Array(0..9)
    Array.new(10) { charset.sample }.join
  end
end
