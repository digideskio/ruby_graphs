require 'RubyGraphs/version'
require 'RubyGraphs/vertex'
require 'RubyGraphs/adjacency_list'

module RubyGraphs
  class Graph
    attr_accessor :adjList
  
    def initialize(adjacencyList = AdjacencyList.new)
      # Allows you to populate the graph with an adjacency list
      # or it will make one for you
      @adjList = adjacencyList
    end
    
    def addVertex(value)
      Vertex.new(value)
    end

    def addEdge(srcVertex, dstVertex, weight = nil)
      @adjList.addEdge(srcVertex, dstVertex, weight)
    end
  
    def delEdge(srcVertex, dstVertex)
      @adjList.delEdge(srcVertex, dstVertex)
    end
  
    def weightBetween(srcVertex, dstVertex, newWeight = nil)
      @adjList.weightBetween(srcVertex, dstVertex, newWeight)
    end
    
    def degree(vertex)
      @adjList.degree(vertex)
    end
  
    def displayUndirected(fileName = 'graph')
      File.open(fileName + ".dot", "w") do |f|
        f.puts "graph {"
      
        @adjList.vertices.each do |vertex|
          f.puts "  #{vertex.id} [label=\"#{vertex.value}\"];"
        end
      
        f.puts
    
        @adjList.uedgeList.each do |edge|
          f.print "  #{edge[:src].id} -- #{edge[:dst].id}"
          f.print " [label=\"#{edge[:weight]}\"]" unless edge[:weight].nil?
          f.puts ";"
        end
      
        f.puts "}"
      end
      makePng fileName
    end
  
    def displayDirected(fileName = "graph")
      File.open(fileName + ".dot", "w") do |f|
        f.puts "digraph {"
      
        @adjList.vertices.each do |vertex|
          f.puts "  #{vertex.id} [label=\"#{vertex.value}\"];"
        end
      
        f.puts

        @adjList.vertices.each do |src|
          # Go to next vertex if current has no outgoing edges
          next if @adjList.dirEdgeList[src].nil?
        
          # For each of src vertex's edge...
          @adjList.dirEdgeList[src].each do |edge|
            f.print "  #{src.id} -> #{edge[:dst].id}"
            f.print " [label=\"#{edge[:weight]}\"]" unless edge[:weight].nil?
            f.puts ";"
          end
        end
      
        f.puts "}"
      end
      makePng fileName
    end
    
    def makePng(fileName)
      %x[dot -Tpng #{fileName}.dot -o #{fileName}.png]
      # Commented out for cross-platformness
      #%x[rm graph.dot]
      #%x[open graph.png]
      puts "Graph representation saved to #{fileName}.png"     
    end
  end
end
