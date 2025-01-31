curl \
	  -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $(cat ~/token.gh)" \
    -H "X-GitHub-Api-Version: 2022-11-28" \
    https://api.github.com/repos/MonossDeTypeAcier/graphes/actions/artifacts > gh-artifacts.json
