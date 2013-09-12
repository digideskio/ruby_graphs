module RubyGraph
  class Vertex
    attr_accessor :value, :d, :p, :color

    # :d = distance to root
    # :p = parent node

    def initialize(value)
      @value = value
    end

    def id
      self.object_id
    end

    def to_s
      "Node: #{@value}"
    end
  end
end