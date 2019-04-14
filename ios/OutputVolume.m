#import "OutputVolume.h"
#import "React/RCTLog.h"
#import <AVFoundation/AVAudioSession.h>

#import <pianoApp-Swift.h>


@implementation OutputVolume


PianoSounds* piano;


// This RCT (React) "macro" exposes the current module to JavaScript
RCT_EXPORT_MODULE();

// We must explicitly expose methods otherwise JavaScript can't access anything
RCT_EXPORT_METHOD(playNote: (NSString *)note)
{
//  float volume = [AVAudioSession sharedInstance].outputVolume;
  NSLog(note);
  piano = [[PianoSounds alloc] init];
  [piano play];
}


@end
