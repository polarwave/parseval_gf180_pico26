## RMS and Envelope Threshold Detection
Project Parseval aims to implement a low‑frequency true RMS detector with integrated envelope threshold detection and a event driven latch, targeted at sensor and wireless‑power telemetry signals in sub 10 MHz. The core RMS detector is based on a CMOS quad transconductor that generates a even current component proportional to the square of the input, following the topology of Acharya et al., with a differential input transconductance stage feeding an analog processing block that converts the even current into a DC voltage proportional to the input RMS value.

Building on the system‑level features of commercial parts such as the ADL5904 (Analog Devices), the design implements a signal envelope path that drives a comparator and SR latch to provide programmable threshold detection and event detection.

Some Performance Targets for this proposal:
- Operating bandwidth (input): ≥ 10 MHz for sensor / WPT signals
- Linear dynamic range (true RMS mode): ≥ 20 dB where output is proportional to RMS within specified error, similar to the linear region reported for the CMOS‑quad RMS detector
- Extended measurable range (with calibration): ≥ 30 dB total, using characterization tables to correct nonlinearity beyond the intrinsic differntial stage “window.”
- Response Time Specs: (Vrms) Settling Time <25ns | Threshold Detection Latch Output response <15ns

### Preliminary Block Diagram

![](https://github.com/jkr1sh/parseval_gf180_pico26/blob/4933a6987846c17ae4e34adec16b3eae4261ccc3/docs/Preliminary_Block_Diagram.png)

## Motivation / Gaps / Target Applications
Accurate RMS and envelope detection is useful in low‑frequency sensing, vibration monitoring, and wireless‑power links, where both signal strength estimation and fast threshold detection are needed. While commercial detectors such as the ADL5904 combine true RMS measurement with envelope threshold latching, they are primarily RF‑oriented. This project adapts the compact CMOS‑quad RMS approach of Acharya et al. into a sub‑10 MHz detector.

**Use Cases**

RMS and envelope‑threshold detectors are widely used wherever low‑frequency AC or modulated signals must be monitored, or used for event detection. They provide a scalar measure of signal amplitude (RMS) and a fast envelope path to trigger alarms, control loops, or wake‑up logic when vibration, harvested power, or implant‑link strength crosses critical thresholds.

- Aherwar, Amit and Md. Saifullah Khalid. “VIBRATION ANALYSIS TECHNIQUES FOR GEARBOX DIAGNOSTIC : A.” (2012).  
- M. Meng and M. Kiani, “A Hybrid Inductive-Ultrasonic Link for Wireless
Power Transmission to Millimeter-Sized Biomedical Implants,” IEEE
Transactions on Circuits and Systems II: Express Briefs, vol. 64, no. 10,
pp. 1137–1141, Oct. 2017, doi: 10.1109/TCSII.2016.2626151.
- R. Bolt, M. Magno, T. Burger, A. Romani and L. Benini, “Kinetic AC/DC
Converter for Electromagnetic Energy Harvesting in Autonomous
Wearable Devices,” IEEE Transactions on Circuits and Systems II:
Express Briefs, vol. 64, no. 12, pp. 1422–1426, Dec. 2017, doi:
10.1109/TCSII.2017.2768391
- Z. Shang, Y. Zhao, W. Gou, L. Geng and Y. Lian, “83.9% Efficiency 100-
mV Self-Startup Boost Converter for Thermoelectric Energy Harvester in
IoT Applications,” IEEE Transactions on Circuits and Systems II:
Express Briefs, vol. 67, no. 9, pp. 1654–1658, Sept. 2020, doi:
10.1109/TCSII.2020.2999331
- N. T. Trung and P. Häfliger, “A Submicrowatt Implantable Capacitive
Sensor System for Biomedical Applications,” IEEE Transactions on
Circuits and Systems II: Express Briefs, vol. 62, no. 2, pp. 209–213, Feb.
2015, doi: 10.1109/TCSII.2014.2368260
## Concerns and Improvements foreseen
- Size of Averaging Capacitor in the RMS Stage
	- Varies with target freq range ---> Makes Sense to use an external capacitor
	- Can this be made Programmable, Using a Impd. Converter?
## Primary Design References
- Analog Devices: ADL5904 (https://www.analog.com/media/en/technical-documentation/data-sheets/ADL5904.pdf)
- (RMS Detector Core) V. Acharya, S. Cui and B. Banerjee, "On-Chip RMS Detector using CMOS Quad for RF Testing," doi: 10.1109/SMIC.2009.4770494 
- (Envelope Detector Circuit) *TBD*
