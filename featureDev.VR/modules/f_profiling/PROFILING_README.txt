
This profiling system was created for the Aftermath RP Server.

The profiling system is being used as a method of storing data as an alternative to SQL, allowing simple persistant variables to carry
over between mission restarts.

The overall premise behind saving data is using the servers profileNameSpace, all data will be compiled into "f_aftermath_profile"
and can be pulled from the profile at mission init.

During runtime this data will be altered as new players join and new data is saved into the profile. Once the server saves this will be
recompiled and saved onto the profileNameSpace for further use.

The profile is managed serverSide only meaning data can only be changed through defined functions that are called upon the server.

A profile can be split into profileSpaces which allow multiple profiles be stored in one another.
Structure of the data may look like this.

[
	[
		"player_profile",
		[ ["steamUID",[ ["playerInventory",["classNames"] ],["playerStats",["DATA"]] ] ] ]
	]
]

At the highest level of the hierarchy (play_profile in Example), the profileName will be saved to the missionNameSpace as a variable.
This can be retrieved and edited at any time like a normal variable.

Running f_profile_compile, will take a list of variable defined in "f_aftermath_profileTracker" varName and compile it into 
f_aftermath_profile which is where it will then be saved to profileNameSpace, this operation is expensive and should be not be executed 
frequently and only on autosaves or server restarts.

TBC