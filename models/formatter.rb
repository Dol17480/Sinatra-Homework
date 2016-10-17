class Formatter

  def initialize
  end

def upcase(string)
  return string.upcase
end

def camel_case(string)
 return string.split('_').collect(&:capitalize).join
end

#   return string.split('_').collect(&:capitalize).join
# end

end