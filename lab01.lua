#!/user/bin/lua5.3
print ('Hello World')

lgi = require('lgi')
gtk = lgi.require("Gtk", "3.0")
gtk.init()

bld = gtk.Builder()
bld:add_from_file('lab01.glade')
	
ui = bld.objects

function f()
	print("abcde")
end

ui.my_button.on_clicked = f
ui.my_window.on_destroy = gtk.main_quit
ui.my_window:show_all()



gtk.main()

print("dfsga")
