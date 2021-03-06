module ActiveMocker

  class Table

    attr_reader :name, :fields

    def initialize(name, fields=[])
      @name   = name
      @fields = fields
    end

    def to_h
      {name: name, fields: fields.to_h}
    end

    def column_names
      fields.map { |f| f.name }
    end

  end

end