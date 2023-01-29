
//    Gentle Propulsion -- a two-part creation of an "unscrew propeller"
//    Copyright (C) 2022  Robert L. Read
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU Affero General Public License as
//    published by the Free Software Foundation, either version 3 of the
//    License, or (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU Affero General Public License for more details.
//
//    You should have received a copy of the GNU Affero General Public License
//    along with this program.  If not, see <https://www.gnu.org/licenses/>.


shell_r = 50;
tail_cone_slip = 15;
shell_thickness = 4;
fraction = 1/2;
portal_width = 25.4;
tail_factor = 3;
num_lobes = 4;
$fn = 20;

module shell (r = shell_r, thickness = shell_thickness) {
    difference() {
        sphere(r);
        sphere(r - thickness);
        color("red");
        translate([0,0,-r])
        cube(size = [2*r,2*r,2*r],center = true);
    }
}

module lobeknife(num_lobes,r) {
    r = shell_r;
    lr = r/2;
    for( i = [0: num_lobes -1]) {
        angle = ( i * 360 / num_lobes);
        echo(i);
        echo(angle);
        rotate([0,0,angle])
        translate([lr,0,lr])
        rotate([0,45,0])
        sphere(lr);
    }    
}

module lobes(num_lobes,r) {
    r = shell_r;
    lr = r/2;
    for( i = [0: num_lobes -1]) {
        angle = ( i * 360 / num_lobes);
        echo(i);
        echo(angle);
        rotate([0,0,angle])
        translate([lr,0,lr])
        rotate([0,45,0])
        shell(lr,shell_thickness);
    }       
}

module cut_lobes(num_lobes,r) {
    difference() {
        lobes(num_lobes,r);
        sphere(r-shell_thickness);
    }
}

module square_knife() {
    cube([portal_width,portal_width,shell_r],center = true);
}

module rotor() {
    // now add the lobes;
    r = shell_r;
    lr = r/2;
    difference() {
        union() {
            difference() {
                shell(shell_r,shell_thickness);
                lobeknife(num_lobes);  
            }
        cut_lobes(num_lobes,r);
        }
        square_knife();
    }
    linear_extrude(2,center=true)
    circle(r);
}

module tail_cone() {
    l = tail_factor * shell_r;
    translate([0,0,-l/2])
    rotate([180,0,0])
    cylinder(l,shell_r,center = true);
}

module tail() {
    union() {
        difference() {
            tail_cone();
            translate([0,0,tail_cone_slip])
            tail_cone();
        }
        linear_extrude(2,center=true)
        circle(shell_r);
    }
}
module top() {
    difference() {
        union() {
            rotor();
        }
        square_knife();
    }   
}
module bottom() {
        difference() {
        union() {
            tail();
        }
        square_knife();
        scale([1,1,10])
         square_knife();
    }   
}

top();

// translate([100,100,0])
bottom();