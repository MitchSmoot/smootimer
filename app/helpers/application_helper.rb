module ApplicationHelper

  def active?(path)
    "active timer-active" if current_page? path
  end
end
