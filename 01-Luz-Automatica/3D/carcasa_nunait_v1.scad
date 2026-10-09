
// NUNAIT LABS - Proyecto 01
// Carcasa V1 para ESP32 + HC-SR04 + LED
// Unidades: mm

$fn = 96;

// Dimensiones exteriores
W = 95;
D = 70;
H = 45;

// Espesores
wall = 2.0;
floor_t = 2.0;
lid_t = 2.0;

// Holgura tapa
lid_clearance = 0.30;
lip_h = 3.0;

// Frontal
sensor_d = 17.0;         // un poco de holgura sobre 16 mm
sensor_x1 = 32;
sensor_x2 = 58;
sensor_z  = 22.5;

led_d = 5.5;
led_x = 80;
led_z = 22.5;

// Trasera: abertura baja para cable USB
usb_w = 20;
usb_h = 12;
usb_z = 3.0;

// Cuerpo principal
module body() {
    difference() {
        // caja exterior
        cube([W, D, H], center=false);

        // vaciado interior, abierto por arriba
        translate([wall, wall, floor_t])
            cube([W-2*wall, D-2*wall, H-floor_t+0.1], center=false);

        // agujeros frontales (frontal = y = 0)
        translate([sensor_x1, -0.1, sensor_z])
            rotate([-90,0,0]) cylinder(h=wall+0.2, d=sensor_d);
        translate([sensor_x2, -0.1, sensor_z])
            rotate([-90,0,0]) cylinder(h=wall+0.2, d=sensor_d);
        translate([led_x, -0.1, led_z])
            rotate([-90,0,0]) cylinder(h=wall+0.2, d=led_d);

        // hueco trasero USB / cable
        translate([(W-usb_w)/2, D-wall-0.1, usb_z])
            cube([usb_w, wall+0.2, usb_h], center=false);
    }
}

// Tapa plana con labio interior
module lid() {
    union() {
        cube([W, D, lid_t], center=false);
        translate([wall + lid_clearance, wall + lid_clearance, -lip_h])
            cube([
                W - 2*(wall + lid_clearance),
                D - 2*(wall + lid_clearance),
                lip_h
            ], center=false);
    }
}

// Export selector:
// BODY, LID, o BOTH
part = "BOTH";

if (part == "BODY") {
    body();
} else if (part == "LID") {
    // colocar con el labio hacia arriba para impresión sencilla
    translate([0, D, lid_t])
        rotate([180,0,0]) lid();
} else {
    body();
    // tapa al lado del cuerpo, separada 10 mm
    translate([W + 10, D, lid_t])
        rotate([180,0,0]) lid();
}
