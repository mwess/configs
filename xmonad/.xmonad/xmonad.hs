import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.SetWMName
import XMonad.Hooks.ManageHelpers
import XMonad.Util.Run(spawnPipe)
import XMonad.Util.EZConfig(additionalKeys)
import XMonad.Util.Loggers
import XMonad.Layout.Tabbed
import qualified XMonad.StackSet as W
import System.IO


main = do
   xmproc <- spawnPipe "/bin/xmobar /home/maxi/.xmobarrc"

   xmonad $ defaultConfig
      {  workspaces = ["1:web", "2:mail", "3:dev", "4:master", "5:work", "6:tmp1", "7:tmp2", "8:tmp3", "9:music"]
      ,  borderWidth       = 2
      ,  terminal          = "terminator"
      --,  terminal          = "tilix"
      ,  normalBorderColor  = "#cccccc" 
      ,  focusedBorderColor = "#cd8b00"
      ,  modMask = mod4Mask -- Rebing Mod to the Windows key

      --for JDownloader
      ,  startupHook = setWMName "LG3D"
      
      -- needed for status bar and docks
      --,  manageHook = manageDocks <+> manageHook defaultConfig
      ,  manageHook = composeOne
            [  checkDock               -?> doIgnore --equivalent to manageDocks
            ,  isDialog                -?> doFloat
            ,  isFullscreen            -?> doFullFloat
            ,  className =? "Gimp"     -?> doFloat
            ,  className =? "MPlayer"  -?> doFloat

            ,  return True             -?> doF W.swapDown
            ]
      ,  layoutHook = avoidStruts $ layoutHook defaultConfig
      --, layoutHook = myLayout
      ,  logHook = dynamicLogWithPP xmobarPP
                        {  ppOutput = hPutStrLn xmproc
                        ,  ppTitle = xmobarColor "green" "" . shorten 50
                        ,  ppExtras = [battery]
                        }
      } `additionalKeys`
      [  ((mod4Mask .|. shiftMask, xK_l), spawn "slock")
      ,  ((controlMask, xK_Print), spawn "sleep 0.2l scrot -s")
      --,  ((0, xK_Print), spawn "scrot")
      ]


myLayout = simpleTabbed ||| Full
