module Kernel

  def using(r)
    yield
  ensure
    r.dispose
  end

end
