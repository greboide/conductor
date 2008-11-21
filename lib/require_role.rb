module RequireRole
  def self.included(base)
    base.extend ClassMethods
  end
  
  module ClassMethods
    def require_role(*roles)
      options = roles.last.is_a?(Hash) ? roles.pop : {}
      method_name = roles.collect { |role| role.titleize.gsub(/ /, '').underscore }.join('_or_') + "_role_required"
      define_method(method_name) { require_user && roles.any? { |r| current_user.has_role? r } || render :file => File.join(File.dirname(__FILE__),'public','403.html'), :status => :forbidden }
      private(method_name)
      before_filter method_name.to_sym, options
    end
  end
end
