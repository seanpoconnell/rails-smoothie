module ApplicationHelper
  def should_i_display_the_navbar_background?
    if controller_name == "smoothies" && action_name == "home"
      false
    else
      true
    end
  end
end
