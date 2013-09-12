# TODO
# Make general adjacencylist class and make
# the directed and undirected versions be specializations of it
module RubyGraph
class AdjacencyList
  attr_accessor :edgeList, :uedgeList, :vertices, :dirEdgeList
  
  def initialize
    @edgeList = []
    @dirEdgeList = {}
    @vertices = []
    
    @uedgeList = []
  end
  
  # TODO: Allow options hash with color and shape, see dot language on wiki
  # http://blog.ethanvizitei.com/2010/11/options-hash-classic-ruby-pattern.html  
  def addEdge(srcVertex, dstVertex, weight = nil)
    #@edgeList << { src: srcVertex, dst: dstVertex, weight: weight }
    
    # Update directed edge list for the source vertex
    @dirEdgeList[srcVertex] = [] unless @dirEdgeList[srcVertex]
    @dirEdgeList[srcVertex] << { dst: dstVertex, weight: weight }
    dstVertex.p = srcVertex

    # Update the undirected adjacency lists for each vertex
    #@uedgeList[srcVertex] = [] unless @uedgeList[srcVertex]
    #@uedgeList[srcVertex] << { dst: dstVertex, weight: weight }
    #@uedgeList[dstVertex] = [] unless @uedgeList[dstVertex]
    #@uedgeList[dstVertex] << { dst: srcVertex, weight: weight }
    @uedgeList << {src: srcVertex, dst: dstVertex, weight: weight }
    
    # Update the total list of vertices in the adjacencylist
    @vertices << srcVertex unless vertices.include?(srcVertex)
    @vertices << dstVertex unless vertices.include?(dstVertex)
  end
    
  def delEdge(srcVertex, dstVertex)
    #@edgeList.each do |edge|
    #  if edge[:src] == srcVertex and edge[:dst] == dstVertex
    #    @edgeList.delete(edge)
    #  end
    #end
    
    # TODO: FINISH
    @dirEdgeList[srcVertex].each do |edge|
      #puts "Working on: #{dirEdgeList[srcVertex]}"
    
      if edge[:dst] == dstVertex
        #puts "Found #{edge}" 
      end
    end
  end
  
  def weightBetween(srcVertex, dstVertex, newWeight = nil)
    weightList = []
    
    @edgeList.each do |edge|
      if edge[:src] == srcVertex and edge[:dst] == dstVertex
        edge[:weight] = newWeight unless newWeight.nil?
        weightList << edge[:weight] unless edge[:weight].nil?
      end
    end
    weightList
  end
  
  def degree(vertex)
    x = 0
    @uedgeList.each { |edge| x += 1 if edge[:src] == vertex }
    x
  end
  
  #def [](key)
  #  @vertices.each do |vertex|
  #    if vertex == key
  #      return vertex
  #  end
  #end
end
end