#!/bin/bash                                                                                                                                   
                                                                                                                                              
if setxkbmap -query | grep -q "layout:\s\+us"; then                                                                                           
  setxkbmap se                                                                                                                                
  dunstify -u low -i /home/minzicola/Downloads/tog3.png SE                                                                                    
else                                                                                                                                          
  setxkbmap us                                                                                                                                
  dunstify -u low -i /home/minzicola/Downloads/tog3.png US                                                                                    
fi
