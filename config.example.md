# Configuration

The skills use `{{PLACEHOLDER}}` values. After you create your Google Drive files, replace each one with your own value. You can do it with find-and-replace in an editor or run `scripts/configure.sh`.

| Placeholder | What it is | Where to find it |
|---|---|---|
| `{{CANDIDATE_NAME}}` | Your name, used in resume file names | — |
| `{{HASHIRA_FOLDER_ID}}` | Drive folder "Jobs / Hashira" | The folder URL after `/folders/` |
| `{{TRACKER_SHEET_ID}}` | Sheet "05 Hashira Tracker" (tabs from `templates/tracker/`) | The sheet URL after `/d/` |
| `{{USER_GUIDE_DOC_ID}}` | Doc "00 START HERE - Hashira user guide" | The doc URL |
| `{{PROFILE_DOC_ID}}` | Doc "02 Profile, Positioning and Story Bank" | The doc URL |
| `{{PREP_LIBRARY_DOC_ID}}` | Doc "03 Prep Library" | The doc URL |
| `{{SEARCH_LIBRARY_DOC_ID}}` | Doc "04 Search Library" | The doc URL |
| `{{STANDARDS_DOC_ID}}` | Doc "07 Resume and LinkedIn Standards" | The doc URL |
| `{{PLAYBOOK_DOC_ID}}` | Doc "Interview Playbook and Question Bank" | The doc URL |
| `{{MASTER_RESUME_DOC_ID}}` | Your master resume (a LaTeX .tex/.pdf from `templates/resume-template.tex`, or a Google Doc) | The file URL |
| `{{RESUME_FOLDER_ID}}` | Resume folder (one subfolder per track, plus earlier resumes) | The folder URL |
| `{{LINKEDIN_DRAFT_DOC_ID}}` | LinkedIn profile draft doc | The doc URL |
| `{{COMPANIES_FOLDER_ID}}` | Folder "Companies" (one subfolder per company) | The folder URL |
| `{{LESSONS_DOC_ID}}` | Doc "09 Lessons Learned" (start from `templates/lessons-learned.md`) | The doc URL |
| `{{ASANA_PROJECT_NAME}}` / `{{ASANA_PROJECT_ID}}` | Optional Asana project for job-search tasks | The Asana project URL |

Keep your filled-in copies **out of git**. `.gitignore` already excludes `skills.local/`.
