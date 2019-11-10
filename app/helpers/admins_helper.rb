module AdminsHelper
	def flash_message
    messages = ""
    [:notice, :alert].each {|type|
      if flash[type]
        messages += "<p class=\"#{type}\">#{flash[type]}</p>"
      end
    }

    messages
  end
end