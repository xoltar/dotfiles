import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Hooks.ICCCMFocus
import XMonad.Hooks.SetWMName
import System.IO


main = do
    xmproc <- spawnPipe "xmobar"
    xmonad $ defaultConfig
        { manageHook = manageDocks <+> manageHook defaultConfig
	, startupHook = setWMName "LG3D"
        , layoutHook = avoidStruts  $  layoutHook defaultConfig
        , logHook = takeTopFocus <+> dynamicLogWithPP xmobarPP
                       { ppOutput = hPutStrLn xmproc
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        , modMask = mod4Mask     -- Rebind Mod to the Windows key
        } `additionalKeys`
	        [ ((mod4Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock")
	        , ((controlMask, xK_Print), spawn "sleep 0.2; scrot -s")
	        , ((0, xK_Print), spawn "scrot")
		, ((controlMask .|. mod4Mask, xK_h), sendMessage Shrink)
		, ((controlMask .|. mod4Mask, xK_l), sendMessage Expand)
																		        ]
