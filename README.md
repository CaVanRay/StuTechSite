# StuTechSite

A web-based dashboard for displaying the weekly Student Tech schedule, including daily shifts, current staffing, and who is currently in the office.

The current implementation started as an AI-generated prototype created by Nic to establish the desired appearance and functionality. The goal of this project is to clean up, refactor, and expand upon that prototype to create a reliable, maintainable scheduling application.

# Design Reference

The following screenshots represent the intended appearance and general layout of the application. They should be used as a visual reference during development, but the implementation can be improved as needed.

<img width="1126" height="1079" alt="image" src="https://github.com/user-attachments/assets/5d6a4fce-355d-4835-a032-17b2ab8722b5" /> 

<img width="1128" height="1078" alt="image" src="https://github.com/user-attachments/assets/e06a2930-ed11-4751-bfc4-9314e94e2b90" />

---
### Phase 1: Project organization and cleanup
To-do:
- [ ]  split up the HTML, CSS, & JS into separate files
- [ ] Create dedicated css/ and js/ directories.
- [ ] Move employee roster data into its own JavaScript file.
- [ ] Remove duplicate and overridden CSS declarations.
- [ ] Organize JavaScript into logical functions.
- [ ] Add descriptive comments where functionality isn't immediately obvious.
- [ ] Establish consistent naming conventions for variables, functions, and CSS classes.

---

### Phase 2: Fix existing code issues
To-do:
- [ ] Fix the time conversion function in PowerShell.
- [ ] Initialize $book before entering the try block.
- [ ] Add validation for missing or incorrectly formatted Excel data.
- [ ] Handle cases where the roster file fails to load.
- [ ] Remove the unused feed variable or implement its intended functionality.
- [ ] Handle days with no scheduled employees.
- [ ] Prevent invalid timeline calculations when no shifts exist.
- [ ] Verify that the schedule correctly handles shifts crossing noon.
- [ ] Make sure the display doesn't show stale schedule information after an update.

---

### Phase 3: Improve the scheduling application
To-do:
- [ ] Highlight the currently active employee shifts.
- [ ] Visually distinguish upcoming shifts from completed shifts.
- [ ] Add a countdown until the next shift begins.
- [ ] Display the number of employees currently working.
- [ ] Add a more obvious indication when nobody is scheduled.
- [ ] Display the current day prominently.
- [ ] Improve the schedule timeline's readability.
- [ ] Add a configurable rotation interval.
- [ ] Avoid rotating pages when there are six or fewer employees.
- [ ] Add a configurable refresh interval.

---

### Phase 4: Reliability and automation
To-do:
- [ ] Add error handling for failed weather API requests.
- [ ] Add error handling for missing roster.js.
- [ ] Display the last successful roster update time.
- [ ] Display the last successful weather update time.
- [ ] Make automatic page refresh configurable.
- [ ] Prevent overlapping refresh operations.
- [ ] Verify the generated roster file is valid before replacing the existing one.
- [ ] Log PowerShell execution errors.
- [ ] Ensure Excel processes are properly closed after script execution.
- [ ] Add a fallback if the internet connection goes down.

---

### Phase 5: Testing and validation
To-do:
- [ ] Test every weekday's schedule.
- [ ] Test employees with multiple shifts in one day.
- [ ] Test employees with overlapping shifts.
- [ ] Test days with no scheduled employees.
- [ ] Test invalid Excel entries.
- [ ] Test missing Excel worksheets.
- [ ] Test missing or corrupted roster files.
- [ ] Test the display at different screen resolutions.
- [ ] Test the application after a browser refresh.
- [ ] Test the application after the computer restarts.

---

### Phase 6: Documentation and deployment
To-do:
- [ ] Create a README explaining the project.
- [ ] Document how to update the Excel schedule.
- [ ] Document how to execute Update-Roster.ps1.
- [ ] Document where the webpage is hosted.
- [ ] Document how the display launches the webpage.
- [ ] Document how to troubleshoot common problems.
- [ ] Create a backup of the working version before deployment.
- [ ] Document dependencies (Excel, PowerShell, browser, internet access).

---

### Future feature ideas:

**<ins> Improved visual dashboard </ins>**
    - Add a more polished display with current staffing, upcoming shifts, and a clearer timeline.

**<ins> Weekly schedule view </ins>**
    - Allow the display to show the entire week's schedule instead of only today's shifts.

**<ins> Shift countdown </ins>**
    - Show things like "Justin starts in 15 minutes" or "2 employees currently working."


**<ins> Application health monitoring </ins>**
    - Show whether roster data loaded successfully, when it was last updated, and whether external services are available.
