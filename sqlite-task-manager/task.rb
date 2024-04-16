class Task

  def initialize(attr={})
    @id = attr[:id]
    @title = attr[:title]
    @description = attr[:description]
    @done = attr[:done] || 0
  end

  def self.find(id)

  end
end
