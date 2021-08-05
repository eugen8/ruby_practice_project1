# require './engine.rb '

#

m = MotorCycle.new('Yamaha', 'red')
m.start_engine

require 'ipaddr'

admin_ip = IPAddr.new('192.168.1.0/24')
client_ip = IPAddr.new('192.168.1.2')
admin_ip.in clude?client_ip => true

# Do it in one line:
IPAddr.new('192.168.2.0/24').include?IPAddr.new('192.168.2.100') => true

