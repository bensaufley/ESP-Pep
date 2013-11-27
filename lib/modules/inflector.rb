module Inflector
   # Yields a singleton instance of Inflector::Inflections so you can specify additional
   # inflector rules.
   #
   # Example:
   #   ActiveSupport::Inflector.inflections do |inflect|
   #     inflect.uncountable "rails"
   #   end

    # Original method
   def inflections
     if block_given?
       yield Inflections.instance
     else
       Inflections.instance
     end
   end      

    # My crazy method
   def inflections(locale = nil)
     locale ||= I18n.locale
     locale_class = \
       if locale.to_s == I18n.default_locale.to_s
         ActiveSupport::Inflector::Inflections
       else
         ActiveSupport::Inflector.const_get("Inflections_#{locale}") rescue nil
       end

     if locale_class.nil?
       ActiveSupport::Inflector.module_eval %{
         class ActiveSupport::Inflector::Inflections_#{locale} &lt; ActiveSupport::Inflector::Inflections
         end
       }
       locale_class = \
         ActiveSupport::Inflector.const_get("Inflections_#{locale}")
     end

     if block_given?
       yield locale_class.instance
     else
       locale_class.instance
     end
   end

   # Returns the plural form of the word in the string.
   #
   # Examples:
   #   "post".pluralize             # =&gt; "posts"
   #   "octopus".pluralize          # =&gt; "octopi"

    # Original method
    def pluralize(word)
     result = word.to_s.dup

     if word.empty? || inflections.uncountables.include?(result.downcase)
       result
     else
       inflections.plurals.each do |(rule, replacement)| 
         break if result.gsub!(rule, replacement)
       end
       result
     end
   end

    # My method
   def pluralize(word, locale = nil)
     locale ||= I18n.locale
     result = word.to_s.dup

     if word.empty? || inflections(locale).uncountables.include?(result.downcase)
       result
     else
       inflections(locale).plurals.each do |(rule, replacement)|
         if replacement.respond_to?(:call)
           break if result.gsub!(rule, &replacement)
         else
           break if result.gsub!(rule, replacement)
         end
       end
       result
     end
   end
end