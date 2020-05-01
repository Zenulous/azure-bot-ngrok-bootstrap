start cmd /k .\ngrok.exe http 3978 -host-header="localhost:3978"
set /p endpoint="Please enter the ngrok HTTPS URL: "
cmd /k az bot update --n {{BOT_REGISTRATION_NAME}} -g {{RESOURCE_GROUP}} --subscription {{SUBSCRIPTION}} --endpoint  %endpoint%/api/messages