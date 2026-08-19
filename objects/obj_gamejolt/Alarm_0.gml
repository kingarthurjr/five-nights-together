// Ping the server to say "I'm still playing!"
GJSessionPing(true, function(_ping_success) {});

// Reset the timer for another 30 seconds
alarm[0] = 1800;