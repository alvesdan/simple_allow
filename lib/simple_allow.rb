require_relative 'simple_allow/version'

module SimpleAllow
  def allow(*allowed)
    allowed.include?(self) ? self : nil
  end
end

String.send(:include, SimpleAllow)
Symbol.send(:include, SimpleAllow)
