class ClassyFormBuilder < ActionView::Helpers::FormBuilder
  def check_box(method, options = {}, checked_value = "1", unchecked_value = "0")
    classy_content(method, classy_options(options), super, ' ', true)
  end

  def collection_select(method, collection, value_method, text_method, options = {}, html_options = {})
    classy_content(method, classy_options(options), super)
  end

  def country_select(method, priority_countries = nil, options = {}, html_options = {})
    classy_content(method, classy_options(options), super)
  end

  def datetime_select(method, options = {}, html_options = {})
    classy_content(method, classy_options(options), super)
  end

  def file_field(method, options = {})
    classy_content(method, classy_options(options, 'file'), super)
  end

  def password_field(method, options = {})
    classy_content(method, classy_options(options, 'password'), super)
  end

  def radio_button(method, tag_value, options = {})
    classy_content(method, classy_options(options, 'radio'), super, ' ', true)
  end

  def select(method, choices, options = {}, html_options = {})
    classy_content(method, classy_options(options), super)
  end

  def text_area(method, options = {})
    classy_content(method, classy_options(options), super)
  end

  def text_field(method, options = {})
    classy_content(method, classy_options(options, 'text'), super)
  end

  def time_zone_select(method, priority_zones = nil, options = {}, html_options = {})
    classy_content(method, classy_options(options), super)
  end

protected
  def classy_options(options, html_class = nil)
    classes = options.delete(:class) || ''
    classes = classes.split(' ')
    classes << html_class if html_class
    classes << 'disabled' if options[:disabled]
    options[:class] = classes.join(' ') unless classes.empty?
    [:hint,:label].inject({}) do |h,o|
      h[o] = options.delete(o) if options.include?(o)
      h
    end
  end
  
  def classy_content(method, classy_options, content, sep = '<br />', append_label = false)
    if classy_options[:label] != false
      content = Array(content)
      if append_label
        content.push(label(method, classy_options[:label]))
      else
        content.unshift(label(method, classy_options[:label]))
      end
      content.push(@template.content_tag('span', classy_options[:hint], :class => 'hint')) if classy_options[:hint]
    end
    @template.content_tag('div', content)
  end
end
