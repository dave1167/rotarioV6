dmx.Formatter('to24hrWithSeconds', function (value) {
    if (!value) return '';
    
    // Parse the time string (expecting format like "07:20 PM")
    const match = value.match(/^(\d{1,2}):(\d{2})\s*(AM|PM)$/i);
    if (!match) return '';
    
    let [_, hours, minutes, period] = match;
    hours = parseInt(hours);
    
    // Convert to 24-hour format
    if (period.toUpperCase() === 'PM' && hours !== 12) {
        hours += 12;
    } else if (period.toUpperCase() === 'AM' && hours === 12) {
        hours = 0;
    }
    
    // Format with leading zeros and add :00 for seconds
    return `${hours.toString().padStart(2, '0')}:${minutes}:00`;
});