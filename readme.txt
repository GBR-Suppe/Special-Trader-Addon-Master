

Special Trader Addon, by GBR Suppe.

It is a simple and good way to paste vehicles which are actually op...

At a Special Trader you can buy special Vehicles.
Vehicle do not save on restart, but the Vehicles are cheap.
The vehicles are heavily armored, and should remain something special, so the vehicles will not save in future !

Add or change what u want, but this is not a HowTo, just look in the Files, everything is in it.....


 Install:

- Copy the "trade_addon.pbo" into the folder "@epochhive\addons\"

- Create Zivilist to your Mission (Zivilistname: dude1 or more dude2)

- Add to Zivilist init:
 dude1 addAction [""Irfrit for 1200 Krypto ?"", ""custom\1.sqf""]; dude1 addAction [""Strider for 1400 Krypto ?"", ""custom\2.sqf""]; dude1 addAction [""Offroad HMG for 4500 Krypto ?"", ""custom\3.sqf""];  dude1 allowDammage false;  dude1 enableSimulation true; dude1 disableAI 'MOVE';";



(Optional) Add to your Briefing:

player createDiaryRecord ["menu3",
["Special  Trader","<br/>

Special Trader can be found at the yellow dots on the Map.<br/>
There you can buy special Vehicles.<br/><br/>

Vehicle do not save on restart, but the Vehicles are cheap.<br/><br/>

The vehicles are heavily armored, and should remain something special, so the vehicles will not save in future !<br/><br/>

Vehiclelist:<br/>
Irfrit           1200 Crypto<br/>
Strider          1400 Crypto<br/>
Offroader HMG    3000 Crypto<br/><br/>

Cessna 			 600 Crypto<br/>
Water Cessna 	 800 Crypto<br/><br/>

The vehicles can not be sold at a normal trader!<br/><br/>
"]]; 

