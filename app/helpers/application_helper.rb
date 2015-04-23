module ApplicationHelper
	def sortable(column, title = nil)
		title ||= column.titleize
		if(column != "era")
			css_class = column == sort_column ? "current #{sort_direction}" : nil
			direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
			link_to title, params.merge(:sort => column, :direction => direction, :page => nil), {:class => css_class}
		else
			css_class = column == "era" && sort_column == "era_sort_order" ? "current #{sort_direction}" : nil
			direction = column == "era" && sort_column == "era_sort_order" && sort_direction == "asc" ? "desc" : "asc"
			link_to title, params.merge(:sort => :era_sort_order, :direction => direction, :page => nil), {:class => css_class}
		end
	end
end
