#!/bin/bash

# Generate the netlist
xschem -b -s -n -q --netlist_path . --netlist_filename mos_char.spice mos_char.sch