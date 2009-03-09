class ActionView::Helpers::InstanceTag
  def to_text_area_tag_with_smart_constraints(options)
    add_max_length_constraints(options)
    to_text_area_tag_without_smart_constraints(options)
  end
  alias_method_chain :to_text_area_tag, :smart_constraints
end