function pull() {
	AUTH="token b358f3d09981d09a7c783e9847040428f98f4231"
	TEMPLATE_URL="https://nageler.org/templates"
	JSON="$(curl -sS \
	  -H "Authorization: $AUTH" \
	  -H "Content-Type: application/json" \
	  -d '{"name":"'$1'"}' \
	  http://epiczerg.me/api/v1/user/repos)";
	CLONE_URL="$(echo $JSON | python -c 'import json, sys; print(json.loads(sys.stdin.readline())["clone_url"])')";
	git clone $CLONE_URL;
	cd $1;

	if [ -n "$2" ]; then
		URL=$TEMPLATE_URL/$2.tar.gz
		curl $URL |
		tar -xz --strip-components=1;
		git add .;
		git commit -m "load template from $URL"
	fi
}
