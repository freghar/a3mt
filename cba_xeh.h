/*
 * Extended Eventhandlers from CBA
 */

#ifdef undefined
class Extended_Killed_Eventhandlers
{
	class CAManBase
	{
		/* for stealth missions - add Hide Body action to corpses */
		class XEH_HideBodyAction
		{
			killed = "(_this select 0) call A3MT_fnc_add_hidebody;"
		};
	};
};
#endif
