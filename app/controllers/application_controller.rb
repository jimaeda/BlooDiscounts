class ApplicationController < ActionController::Base
	def hello
        render html: 'Salve, salve'
  end

end
