Linux Setup
===========

### Switch Alt and Super

```
xmodmap -e "keycode 64 = Super_L NoSymbol Super_L"    #this will make Alt_L to act as Super_L
xmodmap -e "keycode 133 = Alt_L Meta_L Alt_L Meta_L"  #this will make Super_L to act as Alt_L
xmodmap -pke > ~/.xmodmap
echo "xmodmap .xmodmap" >> ~/.xinitrc
```

Note - possibly useful guide for KDE laptop
