# google cloud functions

## Starting a project

To start a new project,

### Create the virtual envirnment 

first we need to install the virtual envirment and install requirements library

To create so i have create 'init_setup.sh' just run it it will create python envirnment, activate the envirnment and install requirements.txt

```
bash ./init_setup.sh
```

refer init_Setup.sh file to understand better.

## Deploying our functions

First, we have to set our project ID with the following command:

```
gcloud config set project [YOUR_PROJECT_ID]
```

Then we deploy our function with this command:

```
gcloud functions deploy [FUNCTION_NAME] --runtime python37 --trigger-http
```
## Deploying cloud functions with environment variables and other dependencies

We have to create a .env.yaml file and a requirements.txt file in the same directory of our main.py and then run the following command:

```
gcloud functions deploy [FUNCTION_NAME] --env-vars-file .env.yaml --runtime python37 --trigger-http
```

## Schedule Cloud Functions

We execute the following commands:

```
gcloud components install beta
gcloud components update
gcloud pubsub topics create [TOPIC_NAME]
gcloud pubsub subscriptions create cron-sub --topic [TOPIC_NAME]
```

## Deleting a Cloud Function

To delete a Cloud Function run the following command:

```
gcloud functions delete [FUNCTION_NAME]
```
