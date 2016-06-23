class Object
  def blizzard
    freeze
  end
end

module Enumerable
  def blizzard
    self.freeze
    each do |*objs|
      objs.each do |o|
        o.blizzard if o.respond_to?(:blizzard)
      end
    end
  end
end
