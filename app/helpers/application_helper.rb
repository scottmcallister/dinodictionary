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

	def refinement(field, value, parameters)

		if parameters[field] == value
			if(parameters.has_key?(:search))
				search = parameters[:search]
			else
				search = ""
			end

			case field
			when "era"
				return link_to value.titleize, params.merge(:search => search, :era => "", :diet => parameters[:diet], :taxonomic_order => parameters[:taxonomic_order], :location => parameters[:location]), :class => "selected_refinement"
			when "diet"
				return link_to value.titleize, params.merge(:search => search, :era => parameters[:era], :diet => "", :taxonomic_order => parameters[:taxonomic_order], :location => parameters[:location]), :class => "selected_refinement"
			when "taxonomic_order"
				return link_to value.titleize, params.merge(:search => search, :era => parameters[:era], :diet => parameters[:diet], :taxonomic_order => "", :location => parameters[:location]), :class => "selected_refinement"
			when "location"
				return link_to value.titleize, params.merge(:search => search, :era => parameters[:era], :diet => parameters[:diet], :taxonomic_order => parameters[:taxonomic_order], :location => ""), :class => "selected_refinement"
			end
		else
			if(parameters.has_key?(:search))
				search = parameters[:search]
			else
				search = ""
			end



			case field
			when "era"
				return link_to value.titleize, params.merge(:search => search, :era => value, :diet => parameters[:diet], :taxonomic_order => parameters[:taxonomic_order], :location => parameters[:location]), :class => "refinement"
			when "diet"
				return link_to value.titleize, params.merge(:search => search, :era => parameters[:era], :diet => value, :taxonomic_order => parameters[:taxonomic_order], :location => parameters[:location]), :class => "refinement"
			when "taxonomic_order"
				return link_to value.titleize, params.merge(:search => search, :era => parameters[:era], :diet => parameters[:diet], :taxonomic_order => value, :location => parameters[:location]), :class => "refinement"
			when "location"
				return link_to value.titleize, params.merge(:search => search, :era => parameters[:era], :diet => parameters[:diet], :taxonomic_order => parameters[:taxonomic_order], :location => value), :class => "refinement"
			end
		end
	end

end
