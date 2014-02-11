%hook SBLockScreenView

-(id)_defaultSlideToUnlockText{
    %orig;
    NSString *text = @"unlock";
    return text;    
}

%end 
