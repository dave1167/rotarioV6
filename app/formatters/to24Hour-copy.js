dmx.Formatters('string', {
    to24hrWithSeconds: function (val) {
        if (!val) return '';
        val = val.trim().toUpperCase(); // Normalise casing

        // Match time with AM/PM
        const match = val.match(/^(\d{1,2}):(\d{2})\s?(AM|PM)$/);
        if (!match) return '';

        let hour = parseInt(match[1]);
        const minute = match[2];
        const ampm = match[3];

        // Convert to 24hr
        if (ampm === 'PM' && hour < 12) hour += 12;
        else if (ampm === 'AM' && hour === 12) hour = 0;

        // Leading zero if needed
        hour = hour < 10 ? '0' + hour : hour;

        // Return in hh:mm:00 format
        return `${hour}:${minute}:00`;
    }
});

