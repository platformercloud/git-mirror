# Google Source Repository Mirror
> Mirror from GitHub Gitlab and Bitbucket to Google GSR

## Requirements

### Credentials
- key.json is the GSR service account with push permissions

### Environment Variables

- PROGRESS_URL - webhook callback to set the mirror syncing status
- SOURCE_URL   - git url embedded with basic auth
- GSR_REPO     - remote origin url
- SUCCESS_URL  - webhook callback to set the mirror sync success status status
