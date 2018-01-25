require 'builder'
xml = Builder::XmlMarkup.new(:target => STDOUT, :indent => 2)

xml.coder {
  xml.name 'Louis', :nickname => 'Louie'
  xml.language 'Ruby'
}

# Produces:
# <coder>
#   <name nickname="Louie">Louis</name>
#   <language>Ruby</language>
# </coder>

xml.semester {
  xml.class 'Egyptology'
  xml.class 'Ornithology'
}
