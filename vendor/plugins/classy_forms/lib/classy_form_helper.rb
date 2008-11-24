module ClassyFormHelper
  [:form_for, :fields_for, :form_remote_for, :remote_form_for].each do |method_name|
    module_eval <<-__SRC__, __FILE__, __LINE__
      def classy_#{method_name}(object_name, *args, &proc)
        options = args.last.is_a?(Hash) ? args.pop : {}
        options.update(:builder => ClassyFormBuilder)
        #{method_name}(object_name, *(args << options), &proc)
      end
    __SRC__
  end
end
