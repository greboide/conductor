# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def flash_messages
    [:error, :warning, :notice].collect do |which|
      capture_haml { haml_tag('div', flash[which], {:class => which.to_s}) }.strip if flash.include?(which)
    end.compact.join("\n")
  end
end
