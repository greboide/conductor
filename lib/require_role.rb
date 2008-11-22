module RequireRole
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def require_role(*roles)
      options = roles.last.is_a?(Hash) ? roles.pop : {}
      method_name = roles.collect { |role| role.titleize.gsub(/ /, '').underscore }.join('_or_') + "_role_required"
      define_method(method_name) { require_user && roles.any? { |r| current_user.has_role? r } || access_denied }
      private(method_name)
      before_filter method_name.to_sym, options
    end
  end
  
  def access_denied
    render :file => File.join(RAILS_ROOT, 'public', '403.html'), :status => :forbidden
    false
  end
end
