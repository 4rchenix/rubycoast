class Help
  attr_accessor :name, :desc, :usage, :tag
  def initialize(name, desc, usage, tag)
    @name = name
    @desc = desc
    @usage = usage
    @tag = tag
  end
end
