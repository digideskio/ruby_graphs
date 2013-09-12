module RubyGraph
  class Algorithm
    def initialize(graph)
      @g = graph
    end
    
    def bfs(src)
      @g.vertices.each do |u|
        if u == src
          puts "Source vertex found, skipping"
          next
        end
        u.color = 'white'
        u.d = infinity 
        u.p = nil
      end

      src.color = "gray"
      src.d = 0
      src.p = nil

      @q = [] 
      @q.push src

    end
  end
end