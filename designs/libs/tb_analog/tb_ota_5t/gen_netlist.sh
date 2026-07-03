#!/bin/bash

# Generate the netlist
xschem -s -n --netlist_path . --netlist_filename tb_ota_5t.spice tb_ota_5t.sch
