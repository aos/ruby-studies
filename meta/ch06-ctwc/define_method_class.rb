class RoleAssigner
  ROLES = [:owner, :admin, :manager, :physician, :patient, :customer]

  ROLES.each do |r|
    define_method "is_#{r.downcase}?" do
      print_role(r)          
    end
  end

  def print_role(name)
    puts "Printing role: #{name}"
  end
end
