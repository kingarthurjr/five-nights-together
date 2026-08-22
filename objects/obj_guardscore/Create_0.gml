scoreDisplay = 0;

if GJGetLoginStatus() != ""
{
	GJDataUpdate("current_score","add",htme_globalGet("guardScore"),true,-1,0);
	GJDataFetch("current_score", true, OnScoreFetchAndSubmit, 0);

	function OnScoreFetchAndSubmit(Success, Data, ErrorMessage, RetryNumber)
	{
	    // Check if the fetch was successful
	    if (Success)
		{
	        // 1. Data always comes back as a string, so we convert it to a real number for sorting
	        var score_value = real(Data);
        
	        // 2. Format how you want it to look on the actual leaderboard (e.g., "500 Points")
	        var display_text = string(score_value);
        
	        // 3. Submit it to the default scoreboard!
	        // Parameters: ScoreboardID, Sort, DisplayName, ExtraData, GuestName, Callback, Retry
	        GJScoreAdd("", score_value, display_text, "", "", -1, 0);
        
	        show_debug_message("Score fetched and submitted: " + display_text);
        
	    }
		else
		{
	        show_debug_message("Failed to fetch score: " + ErrorMessage);
	    }
	}
}