module WorkoutsHelper
  def compare_attributes(attribute_name, value1, value2)
    if value2.to_f > value1.to_f
      content_tag(:p, "Improved #{attribute_name}: #{value2} (Previously: #{value1})")
    elsif value2.to_f < value1.to_f
      content_tag(:p, "Decreased #{attribute_name}: #{value2} (Previously: #{value1})")
    else
      content_tag(:p, "#{attribute_name} stayed the same: #{value2}")
    end
  end
end
