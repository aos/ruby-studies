module M1
end

module M2
  include M1
end

module M3
  include M2
  prepend M1
end
