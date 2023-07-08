Battery
##########

The battery stores the energy used by the drone to operate.
The system is prepared to use Lithium-Polymer batteries (LiPo).
These are the more popular batteries for drones.
Also, they have a linear discharge rate, therefore they enable the EPS MCU to determine the remaining charge in the battery effortlessly.

In the market, we will find batteries classified by their cell count:

+----------------+--------------+---------------------+
| Classification | Qty of cells | Nominal voltage [V] |
+================+==============+=====================+
| 1S             | 1            | 3.7                 |
+----------------+--------------+---------------------+
| 2S             | 2            | 7.4                 |
+----------------+--------------+---------------------+
| 3S             | 3            | 11.1                |
+----------------+--------------+---------------------+
| 4S             | 4            | 14.8                |
+----------------+--------------+---------------------+
| 5S             | 5            | 18.5                |
+----------------+--------------+---------------------+
| 6S             | 6            | 22.2                |
+----------------+--------------+---------------------+

The cell-count only affect the voltage of the battery, but not the capacity.
The capacity of the battery will depend on the cells in parallel that have. 
For example a battery 4S2P is a battery with 2 strings of 4 cells in parallel.

But, the voltage of a battery changes with the amount of charge it contains.
A fully charged LiPo battery produces 4.23 V and when is discharged can produce a voltage closer to 2.7 V.
So, the border voltages of the batteries will be when all the cells are discharged (minimum voltage) and when all the cells are fully charged (maximum voltage).

+----------------+---------------------+---------------------+
| Classification | Minimum voltage [V] | Maximum voltage [V] |
+================+=====================+=====================+
| 1S             | 2.7                 | 4.23                |
+----------------+---------------------+---------------------+
| 2S             | 5.4                 | 8.46                |
+----------------+---------------------+---------------------+
| 3S             | 8.1                 | 12.69               |
+----------------+---------------------+---------------------+
| 4S             | 10.8                | 16.92               |
+----------------+---------------------+---------------------+
| 5S             | 13.5                | 21.15               |
+----------------+---------------------+---------------------+
| 6S             | 16.2                | 25.38               |
+----------------+---------------------+---------------------+

The border voltage must be taken in count because will be the voltages that the regulator that is feed by the battery must accept.
In this case, we would like to support 4S to 6S batteries, so, the power switching regulator at the output of the battery must accept input voltages between 10.8 V and 25.38 V.


Battery management ICs
************************

The EPS needs an electronics that can monitor the LiPo battery.
The goal is to use an IC that can handle all the power management of the battery.
Then the MCU can read useful information gathered by this IC and send it as telemetry to other parts of the system.

BQ76925

BQ25798
=========

BQ24170
=========

Comparative
=============

+-------------+-----------------------+--------------+
| Name        | Estimated cost [$USD] | Packaging    |
+=============+=======================+==============+
| BQ25798RQMR | 5.48                  | VQFN-HR-29   |
+-------------+-----------------------+--------------+
| BQ24170RGYT | 3.91                  | VQFN-24      |
+-------------+-----------------------+--------------+

Discarded ICs
================

+-------------+--------------------------------------+
| Name        | Rationale                            |
+-------------+--------------------------------------+
| MCP73831/2  | Only single-cell batteries.          |
+-------------+--------------------------------------+
| TP5100      | Questionable datasheet.              |
+-------------+--------------------------------------+

Links
*******

* [Drone batteries: The Complete Guide][https://www.remoteflyer.com/drone-batteries-the-complete-guide/]

* [Using LiPo batteries for FPV Drones: A Beginner's Guide with Top Product Recommendations][https://oscarliang.com/lipo-battery-guide/]

* [TPS65011 Datasheet][https://www.ti.com/lit/ds/symlink/tps65011.pdf?ts=1688730718863]

* [BQ25798 Datasheet][https://www.ti.com/lit/ds/symlink/bq25798.pdf?ts=1688740609247&ref_url=https%253A%252F%252Fwww.ti.com%252Fproduct%252FBQ25798]

* [BQ76925 Datasheet][https://www.ti.com/lit/ds/symlink/bq76925.pdf]

* [MCP73831/2 Datasheet][https://ww1.microchip.com/downloads/en/DeviceDoc/MCP73831-Family-Data-Sheet-DS20001984H.pdf]

* [TP5100 Datasheet][https://voltiq.ru/datasheets/TP5100-datashhet.pdf]