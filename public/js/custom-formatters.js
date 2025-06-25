// Custom formatter to convert 12-hour time to 24-hour time
dmx.Formatter('to24Hour', function() {
    return function(value) {
        if (!value) return '';
        
        // Convert string to lowercase for easier parsing
        const timeStr = value.toLowerCase().trim();
        
        // Extract hours, minutes, and period (am/pm)
        const match = timeStr.match(/^(\d{1,2}):(\d{2})\s*(am|pm|a|p)?$/);
        if (!match) return value;  // Return original if no match
        
        let [_, hours, minutes, period] = match;
        
        // Convert to numbers
        hours = parseInt(hours);
        minutes = parseInt(minutes);
        
        // Determine if it's PM (if no period specified, assume AM)
        const isPM = period && (period.startsWith('p'));
        
        // Convert to 24-hour format
        if (isPM && hours < 12) {
            hours += 12;
        } else if (!isPM && hours === 12) {
            hours = 0;
        }
        
        // Format with leading zeros
        const formattedHours = hours.toString().padStart(2, '0');
        const formattedMinutes = minutes.toString().padStart(2, '0');
        
        return `${formattedHours}:${formattedMinutes}`;
    };
});