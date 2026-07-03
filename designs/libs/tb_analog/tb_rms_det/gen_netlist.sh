#!/bin/bash

# Generate the netlist
xschem -s -n --netlist_path . --netlist_filename tb_rms_det.spice tb_rms_det.sch
