class Robot
  @@used_names = ['']

  def name
    return @name if @name
    name = ''

    until !@@used_names.include?(name)
      chars = ('A'..'Z').to_a.sample(2).join
      digits = sprintf('%.3d', rand(1000))
      name = chars + digits
    end

    @@used_names << name
    @name = name
  end

  def reset
    @@used_names.delete(@name)
    @name = nil
  end
end
