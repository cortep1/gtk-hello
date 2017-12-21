int main (string[] args) {
  Gtk.init (ref args);

  int click_counter = 0;
  
  var window = new Gtk.Window ();
  window.title = "Title";
  window.set_position (Gtk.WindowPosition.CENTER);
  window.set_default_size (400, 320);
  window.destroy.connect (Gtk.main_quit);

  var button = new Gtk.Button.with_label (@"Click me ($(click_counter))");
  window.add(button);
  button.clicked.connect (() => {
      click_counter++;
      button.label = @"Click me ($(click_counter))";
  });
  
  window.show_all ();
  Gtk.main ();
  return 0;
}