class Height::ListResponse
  include ::Enumerable

  class << self
    def parse(json)
      response = JSON.parse(json)
      items = response['list'].map { |item| Height::Model.for(item) }

      new(items)
    end
  end

  attr_reader :items

  def initialize(items)
    @items = items
  end

  def empty?
    count.zero?
  end

  def count
    @items.count
  end

  def each(&block)
    @items.each(&block)
  end

  def last
    @items.last
  end
end
