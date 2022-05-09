// Add function to each button 
buttonSetAction [1600, "execVM 'UI\Scripts\Profile.sqf'"];
buttonSetAction [1601, "closeDialog 1; createDialog 'LmnOS_Directory'"];
buttonSetAction [1602, "hint 'Administration!'"];
buttonSetAction [1603, "closeDialog 1; createDialog 'LmnOS_Logistics'"];
buttonSetAction [1604, "closeDialog 2"];
buttonSetAction [1605, "hint 'GITHUB!'"];
buttonSetAction [1606, "hint 'Youtube!!'"];
buttonSetAction [1607, "hint 'Discord!'"];

// Set Text on the display 
_name = name player;
ctrlSetText [1000, format ["Welcome %1", _name]];
ctrlSetText [1001, "Added: Awesome new GUI with MORE functions!!"];

