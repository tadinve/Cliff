module ApplicationHelper

	def page_header
		@page_header.presence ? @page_header : "Cliff's Hartman Model"
	end

	def image_radius size = 5
		"-webkit-border-radius: #{size}px; -moz-border-radius: #{size}px; border-radius: #{size}px;"
	end

	# bootstrap progress bar helpers (starts)
	def bs_progress_bar parameter, percent, rate, value, opts = {}
		progress = content_tag(
													'div', 
													content_tag( 'div', '', :class => 'bar', :style => "width: #{percent}%;" ),
													opts.merge(:class => "progress #{progress_filler(rate)} mini-progress #{opts[:class]}")
												)
		rating = content_tag(:div, rate,	:class => 'value')
		value = content_tag(:div, value, :class => 'mls fl')
		clearfix = content_tag(:div, '', :class => 'clearfix')
		overlay = content_tag(:div, progress + rating, :class => 'overlay fl')

		final_bar = content_tag(:div, overlay + value + clearfix, :class => 'fr', :style => 'width: 170px;')

		return content_tag(:div, (parameter + final_bar + clearfix).html_safe )


		return progress
	end

	def progress_filler rate
		return 'progress-success' if ( rate == "Excellent" || rate == "Very Good")
		return 'progress-warning' if ( rate == "Good" || rate == "Average" )
		return 'progress-danger' if ( rate == "Poor" || rate == "Very Poor" || rate == "Bad")
	end


	# bootstrap progress bar helpers (ends)

end
