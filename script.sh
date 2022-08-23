osascript -e "tell application \"Terminal\" to do script \"cd $(pwd) && ./ngrok http 3978\""
echo "Please enter the ngrok HTTPS URL: "
read ngrokUrl
az bot update --n {{BOT_REGISTRATION_NAME}} -g {{RESOURCE_GROUP}} --subscription {{SUBSCRIPTION}} --endpoint  $ngrokUrl/api/messages