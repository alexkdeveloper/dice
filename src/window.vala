/* window.vala
 *
 * Copyright 2022 Alex
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

namespace Dice {
	[GtkTemplate (ui = "/com/github/alexkdeveloper/dice/window.ui")]
	public class Window : Gtk.ApplicationWindow {
		[GtkChild]
		private unowned Gtk.Label sum;
		[GtkChild]
		private unowned Gtk.ComboBox combobox;
		[GtkChild]
		private unowned Gtk.Button play_button;
		[GtkChild]
		private unowned Gtk.Image dice_1;
		[GtkChild]
		private unowned Gtk.Image dice_2;
		[GtkChild]
		private unowned Gtk.Image dice_3;
		[GtkChild]
		private unowned Gtk.Image dice_4;
		[GtkChild]
		private unowned Gtk.Image dice_5;
		[GtkChild]
		private unowned Gtk.Image dice_6;
		private int amount;

		public Window (Gtk.Application app) {
			Object (application: app);
			play_button.clicked.connect (generate_dice);
			generate_dice();
		}
        private void generate_dice(){
			amount = 0;
			dice_reset();
			for (var i = 0; i<combobox.get_active()+1; i++){
				set_dice(i);
			}
			sum.set_text(amount.to_string());
		}
		private void set_dice(int n){
			int img = GLib.Random.int_range(1, 7);
			amount = amount + img;
			switch(n){
               case 0:
			   dice_1.set_from_resource("/com/github/alexkdeveloper/dice/images/"+img.to_string()+".png");
			   break;
               case 1:
			   dice_2.set_from_resource("/com/github/alexkdeveloper/dice/images/"+img.to_string()+".png");
			   break;
			   case 2:
			   dice_3.set_from_resource("/com/github/alexkdeveloper/dice/images/"+img.to_string()+".png");
			   break;
			   case 3:
			   dice_4.set_from_resource("/com/github/alexkdeveloper/dice/images/"+img.to_string()+".png");
			   break;
               case 4:
			   dice_5.set_from_resource("/com/github/alexkdeveloper/dice/images/"+img.to_string()+".png");
			   break;
			   case 5:
			   dice_6.set_from_resource("/com/github/alexkdeveloper/dice/images/"+img.to_string()+".png");
			   break;
			}
		}
		private void dice_reset () {
			dice_1.clear();
			dice_2.clear();
			dice_3.clear();
			dice_4.clear();
			dice_5.clear();
			dice_6.clear();
		  }
	}
}
