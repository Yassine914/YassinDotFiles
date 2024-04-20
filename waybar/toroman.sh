CURRENT_DESKTOP=$(echo -e "$(hyprctl -j monitors)" | jq -r '.[0] | "\(.activeWorkspace.id)"')
ACTIVE_WORKSPACES=$(echo -e "$(hyprctl -j workspaces)" | jq -r '.[] | select(.windows | length > 0) | "\(.id)"' | sort)

while true
do
	echo "hello"
	sleep 1
done
