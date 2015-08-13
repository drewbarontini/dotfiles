#!/usr/bin/env bash
# ****************************************************
#
#   GitHub
#   -> Opens appropriate URLs
#
# ----------------------------------------------------
#   Usage
# ----------------------------------------------------
#
#  `gh`            - opens the root project page
#  `gh issues`     - opens the issues page
#  `gh issue`      - opens the new issue page
#  `gh milestones` - opens the milestones page
#  `gh pulls`      - opens the pulls page
#  `gh pr`         - opens the pull request for the current branch
#  `gh commits`    - opens the commits for the current branch
#  `gh branches`   - opens the branches page
#  `gh pulse`      - opens the pulse page
#
# ****************************************************

set -o errexit
set -o nounset
set -o pipefail

# ----------------------------------------------------
#   Functions
# ----------------------------------------------------

remote_url() {
  git remote -v | grep "^$1" | head -1 | grep -o 'github.com[/:]\S\+'
}

# ----------------------------------------------------
#   Variables
# ----------------------------------------------------

repo=`git remote show origin | grep "Fetch URL:" | sed "s#^.*:\(.*\/.*\).git#\1#"`
url="https://github.com/$repo"

branch="$(git symbolic-ref HEAD)"
branch="${branch#refs/heads/}"
advanced_url="$(remote_url upstream || true)"
advanced_url="${advanced_url:-$(remote_url github || true)}"
advanced_url="${advanced_url:-$(remote_url origin || true)}"
advanced_url="${advanced_url%.git}"

# ----------------------------------------------------
#   Main
# ----------------------------------------------------

if (( "$#" == 0 )); then

  open $url

else

  case "$1" in

    'issues')
      open "$url/issues"
      ;;

    'issue')
      open "$url/issues/new"
      ;;

    'milestones')
      open "$url/milestones"
      ;;

    'pulls')
      open "$url/pulls"
      ;;

    'pr')
      open "https://${advanced_url/://}/pull/${branch//\//%2F}"
      ;;

    'commits')
      open "$url/commits/$branch"
      ;;

    'branches')
      open "$url/branches"
      ;;

    'pulse')
      open "$url/pulse"
      ;;

    *)
      echo
      echo "Opens GitHub URLs"
      echo
      echo "Usage: gh <issues|issue|milestones|pulls|pr|commits|branches|pulse>"
      ;;

  esac

fi
