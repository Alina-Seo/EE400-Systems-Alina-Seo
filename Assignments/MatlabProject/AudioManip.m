# Audio Manipulation Script
# Script takes in file named ProjectPenguin.mp3, expected to be in working directory, and then manipulates it in
#   accordance with the matlab project outline provided by professor
# Alina Matchette
# EE400
#

[y, Fs] = audioread('ProjectPenguin.mp3'); #define and play orignal sound file
sound(y, Fs);

pause(1.5);

y_reversed = flipud(y) #reverse the sound file on the y axis, then play
sound(y_reversed, Fs);
pause(1.5);

Fs_slow = Fs * .5; #play sound with a modifier of .5 (stretch time played by 2)
sound(y, Fs_slow);

pause(1.5);

Fs_slow2 = Fs * 2.5; #play sound with modifer of 2.5 (speed playback 2.5 times)
sound(y, Fs_slow2);



time = (0:length(y)-1)/Fs;  #create time values for plot
halftime = time / .5 #create time scale for streched playback
doubletime =  time / 2.5 #create time scale for shrank playback

subplot (2, 2, 1)
plot(time,y); #plot sound playback normal
title("Normal Playback")

subplot (2, 2, 2)
plot(time,y_reversed); #plot time reversed sound
title("Time Reversal")

subplot (2, 2, 3);
plot(halftime,y); #plot time reversed sound
title("Time Scale .5")

subplot (2, 2, 4);
plot(doubletime,y); #plot time reversed sound
title("Time Scale 2.5")
