module FileMethods
  extend ActiveSupport::Concern

  def do_calculation(a, b)
    a*b
  end
end

