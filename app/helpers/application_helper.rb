module ApplicationHelper

# def add_active_class_to_header_menu_item
#  class="active"
# end

 def active_class(link_path)
  current_page?(link_path) ? "active" : ""
 end
 
end
