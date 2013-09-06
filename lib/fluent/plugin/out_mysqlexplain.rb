class Fluent::MySQLExplainOutput < Fluent::Output
  Fluent::Plugin.register_output("mysqlexplain", self)
  include Fluent::HandleTagNameMixin

  config_param :db_user, :string, :default => nil
  config_param :db_user, :string, :default => nil
  config_param :db_server, :string, :default => "127.0.0.1"
  config_param :db_port, :integer, :default => 3306

  def configure(conf)
    super

#    if !@remove_tag_prefix && !@remove_tag_suffix && !@add_tag_prefix && !@add_tag_suffix
#      raise ConfigError, "out_myslowquerylog: At least one of option, remove_tag_prefix, remove_tag_suffix, add_tag_prefix or add_tag_suffix is required to be set."
#    end
  end


  def emit(tag, es, chain)
    es.each do |time, record|
=begin
      _tag = tag.clone
      filter_record(_tag, time, record)
      if tag != _tag
        Fluent::Engine.emit(_tag, time, record)
      else
        $log.warn "Can not emit message because the tag has not changed. Dropped record #{record}"
      end

      sql = record[:sql]
      :sql = sql.sub(/SET timestamp=\d+;/, "")
      sql = sql.strip
      next if sql.nil? || sql.empty?
      exec_explain(sql)
      mes.add(time, record.merge({sql: sql}))
=end
    end

    chain.next
  end
end
