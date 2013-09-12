require 'spec_helper'

describe RubyGraph::AdjacencyList do
  before :all do
    @adjList = RubyGraph::AdjacencyList.new
    
    @a = RubyGraph::Vertex.new('a')
    @b = RubyGraph::Vertex.new('b')
    @c = RubyGraph::Vertex.new('c')
  end
  
  it "should add edges correctly" do
    @adjList.addEdge(@a, @b)
    @adjList.dirEdgeList[@a][0][:dst].should eq(@b)
  end
  
end