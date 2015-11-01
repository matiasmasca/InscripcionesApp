module ApplicationHelper
  def badge_registrations(count, max)
    case count
    when 0
     @content = tag(:span, class: "badge-default")
    when 1..4
     @content = tag(:span, class: "badge alert-warning")
    when 5..max
      #verde
      @content = tag(:span, class: "badge alert-success")
    when (max+1)..50
      #verde
      @content = tag(:span, class: "badge alert-danger")
    else
      #default
      @content = tag(:span, class: "badge")
    end
  end
end
