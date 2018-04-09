-- The structure of a speech entry;
--	- texture - the portrait texture, representing the speaker
--  - display_name - the name displayed below the portrait
--	- content - the actual line that the character will 'say'
--	- choices (optional) - does the player have any choices to respond to this part of conversation
--	  = text - the text of the choice
--	  = next - the next conversation node to get to when this choice is selected 
--	- next - the index of the next speech data in this table, nil if that's the end of the speech sequence

speech_content =
{
	[1] =
	{
		texture = "23 Zombie Knight",
		display_name = "Black Knight",
		content = "Halt! You shall not enter The Master's chamber!",
		choices =
		{ 
			[1] =
			{
				text = "Step aside, knight! I have no quarrel with you.",
				next = 2
			},
		},
		next = nil
	},
	[2] =
	{
		texture = "23 Zombie Knight",
		display_name = "Black Knight",
		content = "If you come to kill The Master, you shall have to come through me first!",
		choices =
		{
			[1] =
			{
				text = "As you wish!",
				next = nil
			},
		},
		next = nil
	},
	[3] =
	{
		texture = "06 Knight",
		display_name = "White Knight",
		content = "You left me no choice...",
		choices =
		{
			[1] =
			{
				text = "[Search the body.]",
				next = 4
			},
		},
		next = nil
	},
	[4] = 
	{
		texture = "06 Knight",
		display_name = "White Knight",
		content = "[You search the Black Knight's body and find a key.]",
		next = nil
	},
	[5] = 
	{
		texture = "23 Zombie Knight",
		display_name = "Black Knight",
		content = "Argh! Master!.. I have... failed you...",
		next = 3
	},
	[6] = 
	{
		texture = "21 Zombie Mage",
		display_name = "Dark Wizard",
		content = "Turn back now or face your doom, knight.",
		next = nil
	},
	[7] = 
	{
		texture = "21 Zombie Mage",
		display_name = "Dark Wizard",
		content = "This is your last warning.",
		next = nil
	},
	[8] = 
	{
		texture = "06 Knight",
		display_name = "White Knight",
		content = "Dark Wizard! I come to bring justice to you for all the atrocities you've commited!",
		next = 9
	},
	[9] = 
	{
		texture = "21 Zombie Mage",
		display_name = "Dark Wizard",
		content = "All you'll find here is death, knight.",
		next = nil
	},
	[10] = 
	{
		texture = "21 Zombie Mage",
		display_name = "Dark Wizard",
		content = "How is this possible?! I... fall!..",
		next = nil
	},
	[11] = 
	{
		texture = "10 Mage",
		display_name = "King's Wizard",
		content = "My liege! The Queen has been captured by The Dark Wizard! You must save her!",
		next = nil
	},
	[12] = 
	{
		texture = "21 Zombie Mage",
		display_name = "The Dark Wizard",
		content = "Prepare to meet your end, king!",
		next = nil
	},
	[13] = 
	{
		texture = "07 Queen",
		display_name = "The Queen",
		content = "Took you long enough to come! I was about to finish that mage off myself.",
		next = nil
	},
	[14] =
	{
		texture = "19 Zombie Archer",
		display_name = "Merchant",
		content = "Hey, kid, see the door over there? I have a key that opens it. Bring me three coins, and it's yours.",
		choices =
		{
			[1] =
			{
				text = "Here you go.",
				next = 17
			},
			[2] =
			{
				text = "I'll pass.",
				next = 15
			},
		},
		next = nil
	},
	[15] =
	{
		texture = "07 Queen",
		display_name = "Hero",
		content = "I'll pass.",
		next = 16
	},
	[16] =
	{
		texture = "19 Zombie Archer",
		display_name = "Merchant",
		content = "Oh, no, *without* the key, you shall *not* pass! Haha!",
		next = nil
	},
	[17] =
	{
		texture = "07 Queen",
		display_name = "Hero",
		content = "Here you go.",
		next = nil
	},
	[18] =
	{
		texture = "19 Zombie Archer",
		display_name = "Merchant",
		content = "Hey! Are you trying to scam me! Get back when you have the coin!",
		next = nil
	},
	[19] =
	{
		texture = "19 Zombie Archer",
		display_name = "Merchant",
		content = "One... Two... That's three coins alright! Nice doing business with you, kid! Here's the key.",
		next = nil
	},
	[20] =
	{
		texture = "19 Zombie Archer",
		display_name = "Merchant",
		content = "You again? Scraped the three coins yet?",
		choices =
		{
			[1] =
			{
				text = "Here you go.",
				next = 17
			},
			[2] =
			{
				text = "I'm still working on it.",
				next = 21
			},
		},
		next = nil
	},
	[21] =
	{
		texture = "07 Queen",
		display_name = "Hero",
		content = "I'm still working on it.",
		next = 22
	},
	[22] =
	{
		texture = "19 Zombie Archer",
		display_name = "Merchant",
		content = "Well collect them faster, I have another customer interested in the key.",
		next = nil
	},
	[23] =
	{
		texture = "09 Royal",
		display_name = "Apprentice",
		content = "Whew... Climbing that mountain was no simple task.",
		next = 24
	},
	[24] =
	{
		texture = "09 Royal",
		display_name = "Apprentice",
		content = "Now I have to find Grandalf the Master Wizard.",
		next = 25
	},
	[25] =
	{
		texture = "09 Royal",
		display_name = "Apprentice",
		content = "What's with wizards and living in far away remote places?..",
		next = nil
	},
	[26] =
	{
		texture = "09 Royal",
		display_name = "Apprentice",
		content = "Sheesh... this wizard really doesn't want to be bothered. He placed spike traps all over the place!",
		next = nil
	},
	[27] =
	{
		texture = "10 Mage",
		display_name = "Grandalf the Master Wizard",
		content = "Who goes there?! Identify yourself!",
		choices =
		{
			[1] =
			{
				text = "I'm a student from The Collage of Wizards, I come seeking knowledge!",
				next = 28
			},
			[2] =
			{
				text = "I'm a pizza delivery girl, I have your order of three pepperoni pizzas!",
				next = 29
			},
		},
		next = nil
	},
	[28] =
	{
		texture = "10 Mage",
		display_name = "Grandalf the Master Wizard",
		content = "You come for knowledge, huh? Well then... Behind me is a magical door guarding a passage to my library, to open it you must pass The Trial of the Key.",
		choices =
		{
			[1] =
			{
				text = "What's The Trial of the Key?",
				next = 31
			},
		},
		next = nil
	},
	[29] =
	{
		texture = "10 Mage",
		display_name = "Grandalf the Master Wizard",
		content = "Lies! I did not order any pizzas! State your real business here!",
		choices =
		{
			[1] =
			{
				text = "Ok, ok! I'm a student from The Collage of Wizards, I come seeking knowledge!",
				next = 28
			},
			[2] =
			{
				text = "You didn't order pizzas? Oh man, not again! I must've mixed up the address!",
				next = 30
			},
		},
		next = nil
	},
	[30] =
	{
		texture = "10 Mage",
		display_name = "Grandalf the Master Wizard",
		content = "Listen here, girl, stop playing games with me and tell me why are you here!",
		choices =
		{
			[1] =
			{
				text = "Ok, ok! I'm a student from The Collage of Wizards, I come seeking knowledge!",
				next = 28
			},
		},
		next = nil
	},
	[31] =
	{
		texture = "10 Mage",
		display_name = "Grandalf the Master Wizard",
		content = "Actually I was going to the library myself, but forgot the key on the other side of the mountain peak. I'm too lazy to go back and get it.",
		choices =
		{
			[1] =
			{
				text = "So the trial is... to simply get the key and bring it here?",
				next = 32
			},
		},
		next = nil
	},
	[32] =
	{
		texture = "10 Mage",
		display_name = "Grandalf the Master Wizard",
		content = "Yeah, so go and fetch it. I'll let you inside too. But hurry up before I change my mind, you'll find the key by just going over to the eastern side of the peak. Now go!",
		next = nil
	},
	[33] =
	{
		texture = "10 Mage",
		display_name = "Grandalf the Master Wizard",
		content = "Did you get the key yet?",
		choices =
		{
			[1] =
			{
				text = "No, not yet.",
				next = 34
			},
		},
		next = nil
	},
	[34] =
	{
		texture = "10 Mage",
		display_name = "Grandalf the Master Wizard",
		content = "So what are you waiting for? Go get it!",
		next = nil
	},
	[35] =
	{
		texture = "10 Mage",
		display_name = "Grandalf the Master Wizard",
		content = "Did you get the key yet?",
		choices =
		{
			[1] =
			{
				text = "Yeah, I have it with me.",
				next = 36
			},
		},
		next = nil
	},
	[36] =
	{
		texture = "10 Mage",
		display_name = "Grandalf the Master Wizard",
		content = "Great we can open the door then! Let's get inside.",
		next = nil
	},
	[37] =
	{
		texture = "12 Wanderer",
		display_name = "Adventurer",
		content = "The door's locked! I need to find a key somewhere.",
		next = nil
	},
}