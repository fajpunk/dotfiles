import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run
import XMonad.Util.EZConfig
import Graphics.X11.ExtraTypes.XF86

main = do
  xmproc <- spawnPipe "/usr/bin/xmobar /home/dfuchs/.xmobarrc"
  xmonad $ defaultConfig
      { terminal = "terminator"
      -- , modMask = controlMask .|. mod1Mask
      , manageHook = manageDocks <+> manageHook defaultConfig
      , layoutHook = avoidStruts $ layoutHook defaultConfig
      , logHook = dynamicLogWithPP xmobarPP
          { ppOutput = hPutStrLn xmproc
          , ppTitle = xmobarColor "blue" "" . shorten 50
          }
      } `additionalKeys`
      [
        ((mod1Mask .|. shiftMask, xK_z), spawn "xscreensaver-command -lock"),
        ((0 , xF86XK_AudioLowerVolume), spawn "amixer set Master 10%-"),
        ((0 , xF86XK_AudioRaiseVolume), spawn "amixer set Master 10%+"),
        ((0 , xF86XK_AudioMute), spawn "amixer set Master toggle"),
        ((0 , xF86XK_MonBrightnessDown), spawn "xbacklight -dec 5"),
        ((0 , xF86XK_MonBrightnessUp), spawn "xbacklight -inc 5")
      ]
