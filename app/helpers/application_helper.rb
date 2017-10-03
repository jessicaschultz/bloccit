module ApplicationHelper
  def form_group_tag(errors, &block)
    # css_class = 'form-group'
    # css_class << 'has-error' if errors.any?
    # content_tag :div, capture(&block), class: css_class

    # CODE BELOW IS FROM ASSIGNMENT25 SOLUTION VIDEO HAD VS. WHAT I HAD ABOVE:

      if errors.any?
        content_tag :div, capture(&block), class: 'form-group has-error'
      else
        content_tag :div, capture(&block), class: 'form-group'
      end
  end

  def avatar_url(user)
     gravatar_id = Digest::MD5::hexdigest(user.email).downcase
     "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
  end
end
