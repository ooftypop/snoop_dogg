require "snoop_dogg/railtie"

module SnoopDogg
  extend ActiveSupport::Concern
  private

  included do
    def snoop *args
      puts "=" * 89,
           "#{self.class.name} #{self.id}",
           "=" * 89
      self.attributes.sort.each do |k,v|
        puts "#{k}: #{paint(v)}"
      end
      if args.any?
        args.each do |arg|
          self.send(arg).each {|child| child.snoop } rescue self.send(arg).snoop
        end
      else
        puts "=" * 89
      end
    end

    def self.snoop
      self.new.snoop
    end
  end

  def paint(v)
    case v.class.to_s
    when "ActiveSupport::TimeWithZone", "Date", "Time", "DateTime"
      "\e[#{32}m#{v}\e[0m"
    when "Fixnum"
      "\e[#{34}m#{v}\e[0m"
    when "NilClass"
      "\e[#{31}m#{'nil'}\e[0m"
    when "String"
      "\e[#{33}m#{v}\e[0m"
    when "FalseClass", "TrueClass"
      "\e[#{32}m#{v}\e[0m"
    else
      "\e[#{35}m#{v}\e[0m"
    end
  end
end

ApplicationRecord.send(:include, SnoopDogg)
