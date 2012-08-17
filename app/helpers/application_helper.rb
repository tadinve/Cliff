module ApplicationHelper

	def page_header
		@page_header.presence ? @page_header : "Cliff's Hartman Model"
	end

	def image_radius size = 5
		"-webkit-border-radius: #{size}px; -moz-border-radius: #{size}px; border-radius: #{size}px;"
	end

end
