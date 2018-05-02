module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    css_class = column == sort_column.tr("''", '') ? "current #{sort_direction}" : nil
    direction = column == sort_column.tr("''", '') && sort_direction == "asc" ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction, :d => "table"}, {:class => css_class}
  end
end
