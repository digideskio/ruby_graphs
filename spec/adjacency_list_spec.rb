require 'spec_helper'

describe RubyGraphs::AdjacencyList do
  before :all do
    @adjList = RubyGraphs::AdjacencyList.new
    
    @a = RubyGraphs::Vertex.new('a')
    @b = RubyGraphs::Vertex.new('b')
    @c = RubyGraphs::Vertex.new('c')
  end
  
  it "should add edges correctly" do
    @adjList.addEdge(@a, @b)
    @adjList.dirEdgeList[@a][0][:dst].should eq(@b)
  end
  
end