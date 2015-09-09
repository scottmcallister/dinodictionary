module ApplicationHelper

	# helper method for generating refinement links based on GET parameters
	def refinement(field, value, parameters)

		if parameters[field] == value
			if(parameters.has_key?(:search))
				search = parameters[:search]
			else
				search = ""
			end

			case field
			when "era"
				return link_to value.titleize, params.merge(:search => search, :era => "", :diet => parameters[:diet], :taxonomy => parameters[:taxonomy], :location => parameters[:location]), :class => "selected_refinement"
			when "diet"
				return link_to value.titleize, params.merge(:search => search, :era => parameters[:era], :diet => "", :taxonomy => parameters[:taxonomy], :location => parameters[:location]), :class => "selected_refinement"
			when "taxonomy"
				return link_to value.titleize, params.merge(:search => search, :era => parameters[:era], :diet => parameters[:diet], :taxonomy => "", :location => parameters[:location]), :class => "selected_refinement"
			when "location"
				if value != "usa"
					return link_to value.titleize, params.merge(:search => search, :era => parameters[:era], :diet => parameters[:diet], :taxonomy => parameters[:taxonomy], :location => ""), :class => "selected_refinement"
				else
					return link_to value.upcase, params.merge(:search => search, :era => parameters[:era], :diet => parameters[:diet], :taxonomy => parameters[:taxonomy], :location => ""), :class => "selected_refinement"
				end
			end
		else
			if(parameters.has_key?(:search))
				search = parameters[:search]
			else
				search = ""
			end

			case field
			when "era"
				return link_to value.titleize, params.merge(:search => search, :era => value, :diet => parameters[:diet], :taxonomy => parameters[:taxonomy], :location => parameters[:location]), :class => "refinement"
			when "diet"
				return link_to value.titleize, params.merge(:search => search, :era => parameters[:era], :diet => value, :taxonomy => parameters[:taxonomy], :location => parameters[:location]), :class => "refinement"
			when "taxonomy"
				return link_to value.titleize, params.merge(:search => search, :era => parameters[:era], :diet => parameters[:diet], :taxonomy => value, :location => parameters[:location]), :class => "refinement"
			when "location"
				if value != "usa"
					return link_to value.titleize, params.merge(:search => search, :era => parameters[:era], :diet => parameters[:diet], :taxonomy => parameters[:taxonomy], :location => value), :class => "refinement"
				else
					return link_to value.upcase, params.merge(:search => search, :era => parameters[:era], :diet => parameters[:diet], :taxonomy => parameters[:taxonomy], :location => value), :class => "refinement"
				end
			end
		end
	end

end
