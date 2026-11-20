# This is a website for displaying the student techs weekly schedule as well as who is currently in-office.

# Nic got an AI to generate a prototype for how it needs to look but it needs some cleaning up

Phase 1: Project organization and cleanup
To-do:
    1. split up the HTML, CSS, & JS into seperate files
    2. Create dedicated css/ and js/ directories.
    3. Move employee roster data into its own JavaScript file.
    4. Remove duplicate and overridden CSS declarations.
    5. Organize JavaScript into logical functions.
    6. Add descriptive comments where functionality isn't immediately obvious.
    7. Establish consistent naming conventions for variables, functions, and CSS classes.



Phase 2: Fix existing code issues
To-do:
    1. Fix the time conversion function in PowerShell.
    2. Initialize $book before entering the try block.
    3. Add validation for missing or incorrectly formatted Excel data.
    4. Handle cases where the roster file fails to load.
    5. Remove the unused feed variable or implement its intended functionality.
    6. Handle days with no scheduled employees.
    7. Prevent invalid timeline calculations when no shifts exist.
    8. Verify that the schedule correctly handles shifts crossing noon.
    9. Make sure the display doesn't show stale schedule information after an update.



Phase 3: Improve the scheduling application
To-do:
    1. Highlight the currently active employee shifts.
    2. Visually distinguish upcoming shifts from completed shifts.
    3. Add a countdown until the next shift begins.
    4. Display the number of employees currently working.
    5. Add a more obvious indication when nobody is scheduled.
    6. Display the current day prominently.
    7. Improve the schedule timeline's readability.
    8. Add a configurable rotation interval.
    9. Avoid rotating pages when there are six or fewer employees.
    10. Add a configurable refresh interval.



Phase 4: Reliability and automation
To-do:
    1. Add error handling for failed weather API requests.
    2. Add error handling for missing roster.js.
    3. Display the last successful roster update time.
    4. Display the last successful weather update time.
    5. Make automatic page refresh configurable.
    6. Prevent overlapping refresh operations.
    7. Verify the generated roster file is valid before replacing the existing one.
    8. Log PowerShell execution errors.
    9. Ensure Excel processes are properly closed after script execution.
    10. Add a fallback if the internet connection goes down.



Phase 5: Testing and validation
To-do:
    1. Test every weekday's schedule.
    2. Test employees with multiple shifts in one day.
    3. Test employees with overlapping shifts.
    4. Test days with no scheduled employees.
    5. Test invalid Excel entries.
    6. Test missing Excel worksheets.
    7. Test missing or corrupted roster files.
    8. Test the display at different screen resolutions.
    9. Test the application after a browser refresh.
    10. Test the application after the computer restarts.



Phase 6: Documentation and deployment
To-do:
    1. Create a README explaining the project.
    2. Document how to update the Excel schedule.
    3. Document how to execute Update-Roster.ps1.
    4. Document where the webpage is hosted.
    5. Document how the display launches the webpage.
    6. Document how to troubleshoot common problems.
    7. Create a backup of the working version before deployment.
    8. Document dependencies (Excel, PowerShell, browser, internet access).



Future feature ideas:

    1. Improved visual dashboard
        - Add a more polished display with current staffing, upcoming shifts, and a clearer timeline.

    2. Weekly schedule view
        - Allow the display to show the entire week's schedule instead of only today's shifts.

    3. Shift countdown
        - Show things like "Justin starts in 15 minutes" or "2 employees currently working."


    4. Application health monitoring
        - Show whether roster data loaded successfully, when it was last updated, and whether external services are available.
