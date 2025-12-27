class Bank
  def reduce(source, to_currency)
    return source if source.is_a?(Money)

    source.reduce(to_currency)
  end
end
