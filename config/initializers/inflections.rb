# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:

ActiveSupport::Inflector.inflections(:es) do |i|
  i.clear :all
  i.plural /$/, 's'
  i.plural /([^aeioué])$/, '\1es'
  i.plural /([aeiou]s)$/, '\1'
  i.plural /z$/, 'ces'
  i.plural /á([sn])$/, 'a\1es'
  i.plural /í([sn])$/, 'i\1es'
  i.plural /ó([sn])$/, 'o\1es'
  i.plural /ú([sn])$/, 'u\1es'
  i.singular /s$/, ''
  i.singular /es$/, ''
  i.irregular 'papá', 'papás'
  i.irregular 'mamá', 'mamás'
  i.irregular 'sofá', 'sofás'
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
