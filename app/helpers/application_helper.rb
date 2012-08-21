module ApplicationHelper

	def page_header
		@page_header.presence ? @page_header : "Cliff's Hartman Model"
	end

	def image_radius size = 5
		"-webkit-border-radius: #{size}px; -moz-border-radius: #{size}px; border-radius: #{size}px;"
	end

	# bootstrap progress bar helpers (starts)
	def bs_progress_bar percent, filler, opts = {}
		content_tag(
									'div', 
									content_tag( 'div', '', :class => 'bar', :style => "width: #{percent}%;" ),
									opts.merge(:class => "progress #{filler} progress-striped mini-progress #{opts[:class]}")
								)
	end

	def progress_filler rate
    return 'progress-success' if ( rate == "Excellent" || rate == "Very Good")
    return 'progress-warning' if ( rate == "Good" || rate == "Average" )
    return 'progress-danger' if ( rate == "Poor" || rate == "Very Poor" || rate == "Bad")
	end
	# bootstrap progress bar helpers (ends)

end
