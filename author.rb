class Author
  attr_accessor :name, :items

  def initialize(name)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.author = self
  end
end

class Item
  attr_accessor :name, :author

  def initialize(name)
    @name = name
  end
end

author = Author.new('John Doe')
item = Item.new('Item 1')
author.add_item(item)

puts item.author.name
