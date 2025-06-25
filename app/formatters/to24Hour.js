// Custom formatter to convert 12-hour time format to 24-hour format
dmx.Formatter('to24Hour', function (value) {
    // Return null if no value provided
    if (!value) return null;

    // Convert value to string and clean it
    value = value.toString().toLowerCase().trim();

    // Regular expression to match time format (with or without leading zeros)
    const timeRegex = /^(1[0-2]|0?[1-9]):([0-5][0-9])\s*(am|pm)$/i;
    const match = value.match(timeRegex);

    // Return null if format doesn't match
    if (!match) return null;

    let hours = parseInt(match[1]);
    const minutes = match[2];
    const meridiem = match[3].toLowerCase();

    // Convert hours to 24-hour format
    if (meridiem === 'pm' && hours !== 12) {
        hours += 12;
    } else if (meridiem === 'am' && hours === 12) {
        hours = 0;
    }

    // Format hours with leading zero if needed
    hours = hours.toString().padStart(2, '0');

    // Return formatted time with seconds
    return `${hours}:${minutes}:00`;
});