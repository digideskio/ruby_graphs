# RubyGrpahs

RubyGraphs is a library of classes that implement vertices, edges, and graphs in the Ruby environment. It furthermore includes some algorithms that have yet to be implemented - but [depth-first search](http://en.wikipedia.org/wiki/Depth-first_search) is in the making! This [blog post](http://martinbmadsen.dk/blog/representing-mathematical-graphs-in-ruby/) should be consulted for further documentation and explanations of the ideas behind the project.

## Installation

Add this line to your application's Gemfile:

    gem 'ruby-graph'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby-graph

## Usage

A graph consists of vertices and vertices should therefore be created first with their corresponding values (can be changed later):

```ruby
v1 = Vertex.new(1)
v2 = Vertex.new("a")
v2 = Vertex.new(3)
```

Now you are ready to populate the graph with the vertices:

```ruby
graph = graph.new(v1, v2, v3)
```

You should then add connecting edges (can be done before or after - both the Graph and the Vertex classes have methods for this):

```ruby
graph.addEdge(v1, v2, 3)
graph.addEdge(v2, v3, 5)
graph.addEdge(v2, v2)
graph.addEdge(v3, v1)
graph.addEdge(v3, v2, 4)

graph.delEdge(v2, v3)
graph.addEdge(v2, v3, 9)

v3.value = 5
```

And creating a graph with the display method of the graph class will give you the following graph (done with the 'dot' command):

![Example graph](http://martinbmadsen.dk/images/posts/graphExample2.png)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits
Code written by [me](martinbmadsen.dk).

## License

There is none, enjoy!
