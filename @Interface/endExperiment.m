function [key, time] = endExperiment(this)
    codes = [this.leftCode, this.rightCode];
    if (this.spacesAtInfoScreen);
        codes = this.spaceCode;
    end;
    [key, time] = this.waitKeyPress(30, codes);
    this.resetScreen;
    this.alignText('L''exp�rience est termin�e. Merci de votre participation.', this.rect, round(this.fontsize*0.8));
    Screen('Flip', this.window);
    ShowCursor;
end
