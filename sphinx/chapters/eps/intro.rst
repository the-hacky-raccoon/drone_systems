Electronic Power Supply
====================================================

The Electronic Power Supply (EPS) must provide the energy to the rest of the system.

Battery
--------

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

As we can see in the following image, the EPS system is centered around the battery.

.. image:: ../../img/eps_overview.svg
   :align: center
   :width: 600

Links
------

* [Cubesat EPS introduction][http://www.ece3sat.com/cubesatmodules/eps/]

* [Drone batteries: The Complete Guide][https://www.remoteflyer.com/drone-batteries-the-complete-guide/]

* [Using LiPo batteries for FPV Drones: A Beginner's Guide with Top Product Recommendations][https://oscarliang.com/lipo-battery-guide/]

 