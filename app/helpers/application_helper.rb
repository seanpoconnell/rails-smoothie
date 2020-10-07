module ApplicationHelper
  def should_i_display_the_navbar_background?
    if controller_name == "smoothies" && action_name == "index"
      true
    else
      false
    end
  end
end
