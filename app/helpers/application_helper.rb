module ApplicationHelper
  def strongify(text='')
    "<strong>#{text}</strong>".html_safe
  end

  def icon(name)
    "<i class=\"icon-#{name}\"></i>&nbsp;".html_safe
  end
end
