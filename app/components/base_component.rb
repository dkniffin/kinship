# frozen_string_literal: true

class BaseComponent < ViewComponent::Base
  # Inspired by https://www.npmjs.com/package/classnames
  def class_names(*classes_array)
    classes_array.compact.sort.join(" ")
  end

  def before_render
    validate! if respond_to?(:validate!)
  end
end
